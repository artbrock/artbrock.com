---
layout: page
title: Announcing and Unpacking the New Holochain
permalink: /2020/09/16/announcing-and-unpacking-the-new-holochain
image: 1_nJ75c0G005MoVgyyq40KPQ.jpeg
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/holochain/unpacking-the-new-holochain-f54da3ca99b7)]

![]({{ site.urlimg }}1_nJ75c0G005MoVgyyq40KPQ.jpeg){:class="img-responsive"}

You may have already [heard about the new Holochain](https://medium.com/h-o-l-o/a-big-leap-forward-for-holochain-holo-2efaaa54ed08), known informally as Holochain “RSM”, for “refactored state model”. This article dives into what’s actually new about it from a technical and architectural standpoint.

I have organized this overview into three main sections:

1.  Ensuring rigorous correctness in Holochain’s structure and code
2.  Changes to the HDK and app-developer experience
3.  Performance and Security Enhancements

First, though, a few quick highlights of the new software:

Highlights of Holochain RSM compared to the previous version:
=============================================================

*   **At least 10,000 times faster**
*   **Uses 1/10th the memory**
*   **Compiles twice as fast**
*   **Relies on a much more maintainable codebase**
*   **Already structurally poised to switch to full P2P networking**
*   **Includes an improved HDK that simplifies app development (⅓ as many lines of code required)**
*   **More secure with unified capabilities security model**
*   **More complete feature set**

Alright, on to the details.

I. Rigorous Correctness
=======================

For Holochain to guarantee data integrity for distributed apps, its data model, workflows, and validation processes need to be completely airtight. To that end, we have made a large investment in spelling out all of Holochain’s formalized elements clearly.

Stricter Formalization
----------------------

One of our top priorities was to make Holochain RSM’s codebase **easier to comprehend**. The original Holochain prototype and white paper contained sound principles — most of which survive in the new version — but people’s understanding of them slipped over time, either because they’re a bit abstract, atypical, and complex, or because we didn’t spell them out clearly enough the first time.

So we began this overhaul with a [rewrite of Holochain’s formalization document](https://holo.hackmd.io/iFrWEJ0TREqO6iF5iuDcSg?view), including particular attention to the places where confusion had surfaced, such as transforming local chain data to sharded global DHT data. This formal document probably isn’t for everyone, but if you are someone who thinks in more academic terms, it could be helpful.

![]({{ site.urlimg }}1_hpP47IJ_wGpIyzDd3AjoEA.jpeg){:class="img-responsive"}
_Table of how data is transformed from local source chain to shared DHT. For term definitions see the [formalization document](https://www.google.com/url?q=https://holo.hackmd.io/iFrWEJ0TREqO6iF5iuDcSg?view&sa=D&ust=1600270411403000&usg=AOvVaw2mkyCidtXiQvEpnQPT2rwC)_

Concurrent Workflows with Atomic Transactions
---------------------------------------------

The new version of Holochain is largely organized around **workflows** that transform data in particular stages of work such as authoring, publishing, gossiping, validating and integrating data. Each workflow can only make changes to Holochain’s cryptographic state within the specific stage of work it is responsible for. Formalizing our technical architecture around these workflows allowed us to **optimize for concurrent processing** without concern that one workflow would be changing data affected by the scope of another one.

Concurrency is also enhanced by causing workflows to **produce all their changes in a scratch space** and allowing them read-only access to Holochain while doing so. Then at the end of their processing, we grab a lock for a very brief, **atomic write transaction** to the data sources and flush the changes from the scratch space to the underlying tables. We also guarantee that if multiple processes are attempting to write to the source chain, only the one to finish first will succeed, requiring the others to retry their validation on top of the newly updated local state.

![]({{ site.urlimg }}1_4QHb4jEddc0ThoKhqkLVdg.png){:class="img-responsive"}
_Diagram of workflows._

An additional benefit of defining clear workflow boundaries is ensuring that Holochain functions “local first,” which means a Holochain app can successfully change its local state and queue those state changes for synchronization with the DHT when it has network access again. As a result, asynchronous distributed apps **can function offline** and in regions with limited internet access. Offline functionality remains out of bounds for blockchain, but it is a natural fit for Holochain’s agent-centric state model.

A Tighter Tech Stack
--------------------

Holochain is still written in Rust and Holochain app DNAs still compile to Web Assembly (WASM) in order to run. But we standardized a lot of underlying components to decrease the number of dependencies and align our practices and structures with common coding conventions in the Rust community.

**Tokio Futures**: Every function, interface, and component is spawned from a unified tokio futures executor at the level of the Holochain conductor. This lets us **reduce the number of required threads** while still optimizing for concurrency on the threads available to Holochain. However, because some actions cannot safely await a return from a future as they would tie up tokio’s threads for too long, we use tokio’s safe blocking for calling into WASM, I/O, and networking.

Also, since linear logs are difficult to read in highly concurrent systems, we have switched to using the very cool [tokio-tracing logs](https://tokio.rs/blog/2019-08-tracing), which **maintain calling context and sequence** to be much more easily navigated for the kind of complex synchronous actions happening in a P2P distributed framework like Holochain.

**Ghost Actor:** Ghost Actor is a small [actor](https://en.wikipedia.org/wiki/Actor_model) library we created when building lib3h for the prior version of Holochain. It has evolved through a number of iterations to become a lightweight, simple-to-use actor model. We use it in a number of places — for networking, launching WASM, calling workflows from interfaces — to make **efficient and clean execution boundaries** compatible with Rust’s strict management of data lifetimes.**LMDB:** We needed a **lightweight, super-fast key-value database** with unlimited connections for simultaneous read access for Holochain’s Content-Addressable Store (CAS). We chose Mozilla’s [rkv](https://github.com/mozilla/rkv) wrapper for [Lightning Memory-mapped DataBase (LMDB)](http://www.lmdb.tech/doc/) as the best fit for this stage. **Cascading State Engine for Content Addressable Storage (CAS):** We invested quite a lot of energy in wrapping some formalizations around the LMDB databases to provide consistent methods for workflows to interact with Holochain’s cryptographic state.

*   **_Strong Typing_:** Although LMDB can store any type of value in a database entry, we’ve segmented our data into a number of different databases in order to have **strongly typed entries to deserialize to**. This also lets us lean on the strength of Rust’s compiler for consistent interaction with LMDB’s key-value stores.
*   **_Flushing Scratch Spaces_:** We’ve created a consistent process for performing the atomic commits from the workflows’ scratch spaces to the databases holding the final cryptographic state. This lets us **constrain the scope of changes** workflows can make, and it lets us have a **consistent “finishing” process** at the end of their work.
*   **_Cascading Queries_:** When a \`get(<hash>)\` command is called from within a workflow, we cascade through consistent layers of database queries to return the result, including (1) the workspace’s scratch space, (2) the local CAS (holding authored headers/entries to one’s source chain as well as the headers/entries in one’s shard of the DHT), (3) a local cache of data previously requested from the network, and (4) authorized nodes on the DHT via the network. This cascade **enables workflows to reuse data** that may have been loaded or cached by other workflows, as well as **increases responsiveness and performance**, while **shielding the workflows from the complexity** of interacting with these layers.

**Wasmer vs. Wasmi:** A big shift we made was to shift from [wasmi](https://github.com/paritytech/wasmi), a web assembly interpreter, to [wasmer](https://wasmer.io/), which **recompiles web assembly to native machine code for much faster execution** (see details in the Performance section below). In this transition, we also changed a great deal of how everything interfaces at the Holochain/WASM boundary. These changes are too numerous and too detailed to be worth naming here, but the upshot is that they have enabled **faster calls, better memory management, and much higher memory safety/security**. Now, direct calls are simple enough that we can expose them as an API to the Holochain system (more about that in the HDK section below).

**WASM Caching:** In order to reduce load time for hApps running in WASM — now to under a tenth of millisecond, a >1,000x improvement — we set up a WASM cache and restructured our DNA entries in source chains to reference the hash of a chunk of web assembly, rather than storing the web assembly itself in the chain. We can still guarantee hashed integrity of the application code, but now we have **much faster load times** and can **share cached WASM** across multiple locally-installed instances of an app’s DNA. This is especially great for Holo hosts who may be running many copies of an app.

**Serialized Bytes vs. JSON:** The previous version of Holochain used JSON for crossing boundaries between Holochain and other subsystems (WASM, UI interfaces, networkint, etc.). But serializing, deserializing, and parsing JSON is notoriously inefficient, and it can lead to issues with double serialization and hellishly confusing payloads characterized by many layers of backslashed quotation marks. We’ve **standardized interchange across all of these boundaries** with a new binary format that still leverages existing standards (using [MessagePack](https://msgpack.org/)) but is **type-safe, consistent, and many times faster**.

II. HDK 3.0 Macros & Native API
===============================

Let’s now look at some important changes to Holochain from an app-developer perspective.

There is now a direct API available to call Holochain system functions from WASM, and we have also created a simplified Holochain Developer Kit (HDK) with macros to make it even easier to define your entries and write your apps. You can even combine these approaches by using the HDK as shorthand and making direct API calls if you feel constrained by any limitations of the HDK.

A New Direct API
----------------

Although it was technically possible to make direct system calls in the previous version of Holochain, it was so complex and required so many lines of semi-boilerplate code that we didn’t even publish info about how to do it. We also identified some memory-management vulnerabilities in passing data back and forth to the WASM guest processes running inside Holochain’s host process. In Holochain RSM we were able to create a **very efficient method of passing closures which also ensures secure memory handling**.

As a result, bypassing the HDK when needed to make a direct API call can now be accomplished with just a few lines, in contrast with the previous API, which took about 30 times more code as well as some difficult memory management. We are all thrilled to have optimized this into such a usable and maintainable form.

![]({{ site.urlimg }}0_twD0lyJAnavSmIOp.jpeg){:class="img-responsive"}
_Sample code from three different system calls: HDK 3.0 (most efficient), RSM API (most flexible), Previous API (too complex)._

An Upgraded HDK
---------------

HDK 3.0 provides **extremely efficient macros** so that you don’t even need the few lines of boilerplate code described above for each system call. Most developers will prefer the HDK format, and we are hearing reports that it has **shortened app code to about one-third compared to HDK 2.0**. We have also streamlined syntax for consistency, such as by structuring all the function calls in verb-noun format and using standard CRUD terms for data operations (Create, Update, Delete).

As you can see in the partial HDK snapshot below, the codebase is thoroughly self-documenting through Rust crate document generation. However, we aren’t publishing to crates.io until we resolve some namespace conflicts with the old version of Holochain, so until then you’ll need to generate them locally using the \`cargo doc — open\` command.

![]({{ site.urlimg }}0_oCwjqeoTRfm4TzkJ.png){:class="img-responsive"}
_Partial list of HDK macros._

**Working with Elements, not just Entries:** 
All data in Holochain originates in someone’s source chain as a chunk of content, known as an entry, along with a header that chains the entry to all previous data by pointing to the previous header. Headers also contain important metadata about the entry such as its hash, a timestamp, the author’s key, the author’s signature, etc. In Holochain RSM, an entry plus its header are called an Element. When you \`get()\` data from the DHT, the result is not just the entry content, but a **header-entry pair**, which **automatically includes the timestamp, author’s ID, and author’s signature**.

Update and Delete operations now also reference Elements instead of just the entry. This **eliminates ambiguity and prevents the “update loops”** in the DHT modifications that people experienced in the prior version of Holochain.

**Changes to Headers:**
The largest change to internal data structures in this version of Holochain is a shift in the importance of headers. Previously, each new addition to a source chain was a header-entry pair. The header tied the new entry into the chain by referencing the entry hash and created the chaining effect by referencing the hash of the previous header. In the new version of Holochain, we’ve made header structures more sophisticated such that the **system data is embedded directly in the header**, meaning that all system-defined entries — except for agent keys and private entries such as capabilities grants — no longer need entries at all.

This change may seem trivial, but it significantly alters the structure of local chains as well as increases overall performance. For every entry integrated into its header, Holochain no longer needs to publish and gossip _two_ items to the DHT (header & entry) but now just one (just the header with embedded data). This **cuts the amount of gossip and validation that the network needs to perform in half,** allowing for even faster performance and state consistency.

Another aspect of this structural change is that headers, rather than entries, are signed. This fixes a security vulnerability which could have allowed an actor to counterfeit broken headers. It also means that if your app currently inspects signed provenances in headers, you will need to have it reference the multiple signed headers for the entry instead.

**Entry Definitions:**
Beyond the app-defined fields in the struct of an entry, entry definitions now require some additional fields such as visibility (public/private) and num\_validation\_receipts (how many validation receipts are required to build a receipt bundle).

![]({{ site.urlimg }}0_JmWMBmk83oAYT1NV.png){:class="img-responsive"}
_Sample entry definitions_

**Link Definitions:**
The data structure for links is already defined by the Holochain system, so you can simply leverage that structure by using the create\_link() HDK function. Each zome simply needs a unified validate\_link() callback which can match on the link contents. The underlying API has unified the link “type” and “tag” fields, but the HDK still separates those out as distinct parameters.

![]({{ site.urlimg }}0_BmXzSNFSg1DqSFk_.png){:class="img-responsive"}
_Sample link validation._

**Validation Callbacks**:
Holochain now provides a unified callback system which enables you to define familiar callbacks (such as zome initialization, entry validation, custom validation package construction, etc.) which will only call into WASM if they’ve been defined. Also, these calls are automatically tried based on **a layered approach starting with the most specific match and falling through to more general** conditions. For example, you could define default validation code for your app’s entry types to allow only the original author to update/edit it. The callback system would then check first by action (create, update, delete) for the specific entry type, but if the validation code has not been defined for that entry type, it will fall back to the general action case for all entry types.

![]({{ site.urlimg }}0_3th6bmdBbEoBISOz.png){:class="img-responsive"}
_Callback function for validation. This is the_ **_only_** _required callback in an app._

**Many New Callbacks:**
Have you ever wished you could put a hook inside Holochain’s workflows so that every time a new entry is created, you could call a fulltext indexing process? Well, now you can by creating a Post-Commit callback for that entry type. And that’s just one of many new callbacks available to provide **more nuanced triggers in Holochain’s underlying workflows**.

![]({{ site.urlimg }}0_X-77g9EdaE-DvDdK.png){:class="img-responsive"}
_A variety of callback functions available in Holochain RSM._

**Capabilities-Based Security Model:**
Prior versions of Holochain never quite fully implemented the capabilities security we had intended. Now it has. The new Holochain confirms cryptographic source and permissions by checking for explicit capabilities on whatever function is being called **_before_** spinning up WASM to call your app code. **Security is enforced on all calls and connections** whether via local UI connections, remote UI connections, or remote calls from other nodes.

![]({{ site.urlimg }}0_Umo2qWjNdhFJeqV9.png){:class="img-responsive"}
_Sample capabilities grant sharing permission to query a source chain._

**Remote Call:**
Holochain has always contained a direct messaging protocol between nodes, but instead of implementing it as send/receive as we did previously, we have now made it simply a \`remote\_call()\` function. You can still easily implement a send and a receive to mimic prior functionality, but now you can expand your app’s options to **enable the possibility of calling into any zome function from another node**. This lets you leverage Holochain’s unified, capabilities-based security model to do cool things like allowing my assistant to schedule directly in my calendar app (writing to my source chain on my behalf) because I’ve explicitly granted that capability.

**More System Calls:**
Based on requests from our user community, we’ve added a number of system calls to the HDK for functions like **random number generation**, **creating UUIDs**, and **generating timestamps** from local system time. We have some more HDK function requests under review in our pipeline.

**Native Support for Countersigning:**
While all changes in Holochain are changes to **_local_** state on someone’s source chain, some events involve multiple agents agreeing to coordinate simultaneous changes to their state (such as currency transactions: my account goes down by 10 credits while yours goes up 10 credits). It’s important that such actions be bound together as a kind of single atomic event. Previously, applications managed this process by having all parties countersign a single identical entry to each of their chains, and provide the other parties with their signed header as proof of the action.

While that’s still possible through a series of remote function calls between the parties, doing so requires an advanced understanding of the workings of Holochain, and it can get particularly complicated if the parties are not online at the same time. We are dramatically simplifying this process by adding native support to Holochain for countersigning entries. There will be a ‘countersigner’ data type, and when you define fields in one of your entries using this type, **Holochain will manage the process of gathering the signatures** of all the parties for you.

III. Performance & Security Enhancements
========================================

Most of the increases in performance in this version of Holochain come from unblocked concurrent processing (as described above in the section about tokio futures), WASM optimizations, and networking optimizations.

WASM Optimizations
------------------

**Reducing WASM Calls:** Even with the optimizations we’ve made, it is fairly expensive in terms of memory, cpu, and time for Holochain to execute application code in web assembly. So we’ve taken steps to **reduce the number of times Holochain has to spin up WASM** by making some of what is defined in the application code available to Holochain outside of WASM. For example, all publicly exposed zome call functions, including the wide variety of callbacks that can be defined, are revealed so that Holochain can determine whether to call back into WASM without having to spin it up to make that determination. Also, the entry types are available along with their ‘validation\_package’ formats, which enables any node needing to perform DHT validation to avoid a network call as well as a WASM call, if it can determine using native Rust calls that it already possesses the required validation data.

**Native-compiled WASM Performance:** Even web assembly that’s executed via an interpreter is usually much faster than JavaScript. But interpreted code, such as with wasmi, is still much slower than natively compiled code. Wasmer enables Holochain to take WASM code that is distributed in a Holochain application package and recompile it to **run as native binary code that executes approximately 1,000 times faster than interpreted bytecode**. Holochain compiles the code when you install the app (after confirming all the hashes on the WASM code). It also **manages a memory cache** for the compiled code for ultra-fast execution. To ensure the compiled code hasn’t been tampered with we can recompile from the hashed WASM code at random intervals.

**Initial Benchmarking:** We currently see calls to app functions execute in wasmer in under 0.1 milliseconds, compared to 100 to 200 milliseconds for function calls through wasmi in the prior version of Holochain. That’s a **speed improvement of 1,000x to 2,000x**. I had wanted to display some nice performance graphs, but the execution times in the new version are so much faster that the figures don’t even show on the graphs for comparison.

Networking Optimizations
------------------------

**QUIC Protocol:** Instead of the TCP/IP web socket connections we used in the prior version of Holochain, Holochain RSM uses the QUIC standard that Google created to speed page load times in their Chrome browser. Because QUIC uses UDP, it can process **multiple simultaneous bidirectional exchanges**, eliminating “head-of-line blocking” in which small messages get stuck waiting for larger ones ahead of them to finish. Furthermore, after the initial TLS handshake between two peers, future encrypted **connections require zero setup time**.

![]({{ site.urlimg }}0_9HFNlmOeA9MfqfPc.png){:class="img-responsive"}

Under good network conditions, QUIC shows speeds similar to TCP/IP, but on congested or unreliable connections **QUIC outperforms TCP/IP by filling gaps in lost segments of data faster**. This means QUIC has advantages on wireless connections (both WiFi and cellular) which often suffer from this kind of packet loss and also constitute the vast majority of end-user Internet connections these days.

**Proven Crypto**: TLS has become the de facto standard for end-to-end encrypted communications. And Google has ensured widespread adoption of QUIC — so much so that the emerging HTTP/3 standard is built on it. As a result, we’re able to **leverage existing code libraries for both TLS and QUIC** and keep our development focus on data integrity and efficient, complete gossip. It also provides assurance for our users that we aren’t introducing errors or vulnerabilities by building our own crypto communication protocols.

**Reduced Network Calls:** As mentioned above in the section describing cascading queries, Holochain RSM has implemented a **caching layer to reduce the need to query the network for recently seen data**. Caching makes particular sense in a DHT/content-addressable space because, if you’re retrieving content based on its hash, the content is the same as when you last saw it. Only metadata and links may have changed, and we can perform a lazy network get on that data after providing a quick cached response to the UI — and then update the UI again from the network results. In many cases this delivers a **user experience as responsive as a local database**, making the Holochain app experience not only much faster than lethargic blockchain consensus systems but actually **faster than centralized web servers**. Also, since the cache layer only holds data shared publicly on the DHT, it is safe for multiple instances of an app to share the cache; this will result in massive speed-ups for Holo hosts who may be running many instances of an app for different users.

**Hyper-Efficient Network Representation:** DHTs can be chaotic and complex under any condition; add in the properties of gossiping and self-healing and it can become especially challenging to parsimoniously represent the state of the system and who is responsible for what. You may have heard that the prior version of Holochain had some issues with discrepancies between the data that nodes tracked in their hold lists and the data that the network represented as being held by the nodes. In Holochain RSM, data representation has been massively simplified in rrDHT such that **a node represents the range of addresses it is responsible for with a single 32-bit integer**. Now, if you know the address of the node and its arc range, you know exactly what range of addresses you can ask it for. This simplifies the codebase and architecture significantly, while providing performance characteristics on par with complex, binary-tree representations of the DHT space.

**Integrated Keystore:** Holochain’s new keystore stores the private/public keypair not only for agent keys for Holochain apps, but also for the TLS keys used for network connections. And when network transport addresses and TLS keys are published to peer routing tables, they are signed by the agent keys to ensure that nodes are always reaching the endpoint that controls the private key of their targeted agent. These protocols **make Holochain peer communications** **immune to man-in-the-middle attacks**.

**Prepared to Go Full P2P:** Fully decentralized systems can be notoriously hard to test. While developing the prior version of Holochain, we used a central switchboard (sim2h) while we were debugging network coordination and connection issues. We’ve upgraded the process in Holochain RSM by having **each node maintain a peer routing table and contact peers directly** using the transport addresses the target node has published. Nodes that don’t expose a public IP and port (mainly behind NAT or firewalls) can use a relay that can be reached via a public IP address with which they maintain a connection, and publish in the peer routing table that they can be reached via that relay. Initially, for easy troubleshooting, we’ll have every node publish their address via a single relay proxy; the end-to-end TLS encryption ensures the relay can’t read any of the traffic. Then when it comes time to go fully peer-to-peer, all the nodes need to do is publish their own public IP or, if they don’t have one, choose a relay proxy they trust.

Progress Continues
==================

Of course, Holochain RSM is still a work in progress, currently geared toward app developers versus end users. Most of the features described above are built, but some are still in development, and all are still in alpha testing mode. The feedback has been extremely positive, though, from early-access app-dev partners. It won’t be long before we release compact binaries for end-users to run apps. And you can expect to hear about many new features, releases, and apps built on Holochain RSM over the coming weeks and months.

So, here we are.
================

Just to be clear: this release is a big friggin’ deal for Holochain. I can’t tell you the amount of time and brainpower that’s gone into this refactoring. And when I take stock of the result, I couldn’t be happier. **We finally, actually have the Holochain we’ve all been waiting for**: the solid, secure, and performant substrate upon which to build a paradigm-shifting ecosystem of peer-to-peer applications.

_Special thanks to_ [_Josh Zemel_](https://medium.com/@joshmzemel) _for his collaboration in putting together this article._

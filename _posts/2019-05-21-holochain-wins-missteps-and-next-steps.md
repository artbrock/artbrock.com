---
layout: page
title: Holochain - Wins, Missteps, and Next Steps
permalink: 2019/05/21/holochain-wins-missteps-and-next-steps
image: 1_tM-TpUCEJpi_2DJx6_TgSA.png
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/holochain/holochain-wins-missteps-and-next-steps-600812bc9ecc)]

_In collaboration with_ [_Josh Zemel_](https://medium.com/@joshmzemel)

![]({{ site.urlimg }}1_tM-TpUCEJpi_2DJx6_TgSA.png)

Fast out of the Gate: From Conception to Use
============================================

On New Years Eve, the last day of 2016, Eric Harris-Braun and I [started building Holochain](https://github.com/holochain/holochain-proto). The basic design came from one part of [Ceptr](https://ceptr.org/), an advanced computing and currencies platform we’d been working on for years.

Two months later, on the first week of March 2017, we had our [first Hackathon in San Francisco](https://ceptr.org/hackathons) for people to build apps on Holochain.

It was an invitation-only event for friends who understood our tools were not yet mature. Yet even then, people built complete peer-to-peer (P2P) [dApps](https://blockgeeks.com/guides/dapps/) in just a few days in JavaScript and Lisp that essentially worked.

The developers who came expressed surprise at the ease of building on Holochain, having wrestled with tokens and dApps on Ethereum. They also felt safer, knowing they could launch invitation-only and later expand the reach and scope once live-tested, instead of “writing in stone” on a permanent blockchain.

They said: _“It feels like we’re building the plane while flying it, but it’s exciting that it actually flies!”_

And, _“Wow, it’s a distributed app platform that’s actually distributed!”_

That first weekend hackathon yielded [HoloChat](https://github.com/holochain/holochat) (a multichannel Slack-like chat), [TrustGraph](https://github.com/trustgraph/trustgraph) (for making decentralized, censor-proof, reputational claims), and two versions of a Twitter clone called Clutter — [one in JavaScript](https://github.com/holochain/clutter) and [one in Lisp](https://github.com/holochain/cludder) — which both used the same UI.

> …\[M\]uch of the world still thinks Holochain’s application model is unproven when, in fact, we’ve had functional apps for almost two years with speed and scale that outperform every other crypto platform I’ve seen.

Upgrading the Power of Holochain
================================

We were excited about the ease of developing apps on Holochain, but we also knew there were many features to add related to permissions, security, [sharding](https://en.wikipedia.org/wiki/Shard_(database_architecture)) of the [DHT](https://en.wikipedia.org/wiki/Distributed_hash_table), etc.

We worked over the next six months to improve networking, enhance testing, benchmark performance, and learn the [design patterns](https://github.com/holochain/mixins) of building agent-centric dApps on an [eventually-consistent](https://en.wikipedia.org/wiki/Eventual_consistency), sharded, [validating](https://en.wikipedia.org/wiki/Data_validation) DHT.

And after some official Alpha releases, we held **lots more hackathons:**

*   Barcelona, Spain
*   Vaduz, Liechtenstein
*   Riga, Latvia
*   Bristol, UK
*   Porto, Portugal
*   Sebastopol, California
*   London, UK
*   Copenhagen, Denmark
*   Sydney, Australia
*   Melbourne, Australia
*   Vancouver, British Columbia
*   Austin, Texas
*   New York City (twice)
*   Denver, Colorado
*   Sao Paolo, Brazil
*   Amsterdam, Netherlands
*   Pittsburgh, Pennsylvania (Carnegie Mellon University)

![]({{ site.urlimg }}1_Pa035NtcTEFhgI4iCZZ3Fw.png)

Viable Holochain Apps
=====================

Out of those events came about 60 pretty cool Holochain apps at various stages of completion. They ranged from proof-of-concepts of back-end features to pretty polished experiences with full UIs. Some noteworthy ones that come to mind:

*   [DPKI](https://github.com/holochain/dpki): Distributed Public Key Infrastructure — crypto-key management
*   [HoloDex](https://github.com/holochain/holodex): Indexing overlay app for searching a sharded DHT
*   [hApp Store](https://github.com/holochain/HCHC): A distributed directory for distributing distributed apps
*   [Fractal Wiki](https://github.com/holochain/fractal-wiki): Structured wiki of nested cards (like [Decko](https://decko.org))
*   [Transactor](https://github.com/holochain/transactor): A basic mutual-credit currency
*   [Touchpoints](https://github.com/holochain/touchpoints): Mobile NFC-enabled interaction-logging system,
*   A [P2P port](https://github.com/holochain/fed-wiki) of [Federated Wiki](http://fed.wiki.org)
*   [Community Book Sharing Library](https://github.com/zaunders/Mailboox-Rust): Just like it sounds
*   [RaveMaker](http://andersaamodt.com/projects.php): Party announcement and support system
*   [Unter](https://github.com/ArcadeCity/unter): P2P Ridesharing app prototyped by [Arcade City](https://arcade.city/)
*   [Prediction market](https://github.com/jmday/pmkt): For betting on outcomes of real-world events
*   [Comet](https://github.com/MightyAlex200/Comet): P2P Reddit alternative
*   A P2P Credit Clearing Network from the folks at [Promis.co](https://www.promis.co/)
*   A medical drug provenance & supply-chain tracking system
*   A video sharing and live-streaming app
*   [Holo-Health](https://github.com/evomimic/holo-health): Personal Medical Data Management
*   [Electric Smart Meter Management](https://github.com/jeznag/): IoT data-recording & sharing; kilowatt-balancing
*   [UnMute](https://github.com/cosmicsurfers/humm-publisher): censor-proof blogging similar to Medium.com (later evolved into [humm.earth](https://humm.earth/)),
*   [HoloVault (aka Personas](https://github.com/holochain/personas-profiles)): personal data and identity management
*   [New Craigslist](https://github.com/science-girl/NewCraigslist): Craiglist clone (also [implemented in OCaml](https://github.com/struktured/NewCraigsList))
*   [HoloChess](https://github.com/holochain/holochess)
*   [Battleship](https://github.com/willemolding/holochain-battleship)
*   [Massively Multiplayer Pong](https://github.com/holochain/panoptipong) and [Cryptonomipong](https://github.com/HC-Interns/cryptonomipong)
*   [MinerSweeper](https://github.com/holochain/minersweeper): Real-time-ish multiplayer minesweeper
*   [Errand](https://github.com/zo-el/Errand): Trello-like kanban boards for tasks
*   [Omni](https://github.com/OmniProject/omni): For publication of scholarly peer-reviewed articles
*   [HoloREA](https://github.com/sqykly/HoloREA): Supply-chain crypto-accounting using [REA standards](https://www.iso.org/obp/ui/#iso:std:iso-iec:15944:-4:ed-2:v1:en)
*   [Shared To-Do List](https://github.com/kristoferlund/holochain-todo-redux)
*   [Junto](https://junto.foundation/): A social network

Whew! I’m sure there’s a bunch more I’m not remembering at the moment.

> [REA Accounting](https://www.iso.org/obp/ui/#iso:std:iso-iec:15944:-4:ed-2:v1:en) on Holochain revolutionizes supply chain accounting and enables the possibility of any unit of account to function as a cryptocurrency.

Notice how similar these dApps are to the kinds of things we do on the web every day? Holochain app development is not limited to token speculation and slow crypto-gambling as its main use cases. Storing data is cheap. Processing is efficient. Scaling is natural.

I often hear people talk about how the usefulness of dApps is as-yet undemonstrated. But if they were looking at the kinds of dApps that run on Holochain rather than blockchain, they wouldn’t be saying that, because these are the kinds of data driven web apps everyone uses on the web all day.

What’s more, scalability is not an issue for any of these apps, because unlike blockchain, Holochain becomes more efficient as the number of users increases, because a fairly fixed amount of work gets divided across more computers.

Holochain’s dApp Architecture Is Proven
=======================================

Some people still talk about Holochain as if it doesn’t exist yet. This is in part because of confusion about expecting a “MainNet” release or token. But Holochain doesn’t have a built-in token to subsidize inefficiency, and each Holochain app generates its own P2P network, so there’s no MainNet.

Many people clearly don’t realize _a lot of things_ have been built on Holochain and they’ve worked just fine. This is in part a result of our failure to adequately promote Holochain and the apps built on it.

And more importantly, because Holochain manages data integrity without requiring global consensus, it makes many solutions easy that are difficult or impossible to do on other decentralized platforms. For example:

*   After 10 years of blockchain, why is there no reasonable decentralized public key infrastructure?
*   Find another decentralized platform that can do real-time-ish games like MinerSweeper or Pong!
*   Just try storing video on blockchain, much less live-streaming it!
*   [REA Accounting](https://www.iso.org/obp/ui/#iso:std:iso-iec:15944:-4:ed-2:v1:en) on Holochain revolutionizes supply chain accounting and enables the possibility of any unit of account to function as a cryptocurrency.

Preparing to Take Holochain Mainstream
======================================

We designed Holochain to compete head-to-head with blockchain and outperform it in every way, and we had proven the fundamentals of the concept. Now it was time to bring it into the mainstream, and to ensure its sustainability going forward. We had seen too many open-source infrastructure projects suffer financial problems, as well as succumb to the resulting pressure toward centralization. We didn’t want either of those things to ever happen to Holochain.

We took two major actions to these ends:

1\. **The Bridge from Web 2.0 to 3.0**: We designed [**Holo**](https://holo.host/) as our first major commercial project, designed to create financial viability for Holochain by providing a for-profit hosting framework to bridge crypto apps to mainstream users right through their web browsers, just as if they were accessing any data-driven website. Since Holochain has no inherent speed or scale bottlenecks, Holo-hosted apps can theoretically scale to the size of Facebook or Twitter, which could enable Holo to compete with the big cloud-hosting companies in a way that blockchain-based projects never could.

2\. **Community-Based Funding**: In order to ensure that the technology for the next Internet would always be owned by the community itself, rather than be privately held and controlled, we [sold Holo hosting boxes called HoloPorts on IndieGogo](https://www.indiegogo.com/projects/holo-take-back-the-internet-shared-p2p-hosting#/), and we pre-sold hosting credits on the Holo hosting network in an [Initial Community Offering](https://medium.com/h-o-l-o/launching-an-ethical-ico-e21ed5738bb0).

Clarification: Holochain vs. Holo
---------------------------------

**Holochain** is an open-source data-integrity engine that enables self-hosting of P2P apps, avoiding the need for global consensus and resulting in massive scalability, as well as user-control of identity and data. Holochain does not have a token or currency built in, though it’s easy to _build_ currencies on Holochain in the form of distributed accounting apps.

**Holo** is a hosting company that provides hosting infrastructure for Holochain apps to be served to regular web browsers. Just as AirBnB sells more room-nights than the largest hotel chains without ever having built a hotel, Holo seeks to compete with the big cloud-hosting companies without ever building a data center by using the efficiency of Holochain to tap into computing power wherever it already is. Holo does have a native cryptocurrency, called HoloFuel, that is based on the distributed hosting power available on its network, with the currency always being backed by, and redeemable for, this tangible asset.

> It turns out that building the foundation for the next Internet to truly be a P2P approach, is not easy — especially while ensuring appropriate layers of security and privacy.

![]({{ site.urlimg }}1_z9EgMxpDxZORUJXdCX-KDQ.png)

Bulletproofing Holochain
========================

Having sold out our ICO for around 30,000 ETH (worth about $20M at the end of the sale), we now needed to deliver on our promise to scale, so we set out to refactor Holochain for increased security, and to run in browsers and on mobile devices.

One important decision we made was to rebuild Holochain in Rust — unlike its prototype which had been built in Go — in order to take advantage of Rust’s security, stability, and concurrency safety, as well as be able to compile to Web Assembly (WASM) so Holochain apps can run in a web browser or mobile device.

We also needed to staff up with developers, devops, and security and networking specialists needed to make Holochain as bulletproof as it needed to be. This represented a significant investment of time and money, but it was important to beef up Holochain with the ultra-high security measures anyone would rightly expect of a mainstream crypto framework.

In mid-May 2018, with funding and a larger development team in place, we were ready to begin rebuilding the Holochain prototype. We estimated we needed 3 months, targeting our August 15th for our first Alpha release with all the features of the Go prototype. Many of our developers were excited about the rebuild.

![]({{ site.urlimg }}1_D6TzxSuTGx7G4OKKceMsUw.png)

The Inevitable Delays
=====================

It’s now close to a year later. We’ve made a lot of improvements to security, testing, troubleshooting, and underlying infrastructure, and we’ve begun launching a closed-alpha TestNet for Holo. Yet we _still_ don’t have all the features of the original Holochain prototype back in place. Development has taken considerably longer than we anticipated.

It turns out that building the foundation for the next Internet to truly be a P2P approach, is not easy — especially while ensuring appropriate layers of security and privacy.

I still believe that slowing down to build in Rust should save us a lot of trouble in the long run. Rust is so strict that it won’t let you compile until you handle all sorts of possible vulnerabilities that most other languages just let you get away with. We feel confident in the security and stability we get from rebuilding Holochain in Rust.

However it has brought on another challenge which I take very seriously: **_Holochain has gotten harder to use._**

Usability Challenges & Remedies
===============================

We positioned Holo to be a web app hosting platform, but now we have a version of Holochain that only lets you build apps in Rust. And how many web developers code in Rust? Not many.

Another current usability challenge is that we have yet to rebuild the rapid application development (RAD) tools for the Rust version of Holochain. These [wizard-like prompts](https://holochain.github.io/scaffold/) greatly facilitated development and testing in the Go prototype.

Finally, although the ability to compile to WASM was a key reason we pivoted to Rust, the addition of the compile step may be a deterrent for some… not to mention that WASM is still somewhat immature and clumsy to tune and debug.

Taking Stock
============

In retrospect, we underestimated the consequences of the rebuild. Mostly because we have almost no live apps in production at this time instead of a thriving ecosystem (that we still look forward to). Equally important, we underplayed the maturity of the prototype and encouraged devs who were ready to build on it to wait for the Rust version.

As a result, much of the world still thinks Holochain’s application model is unproven when, in fact, we’ve had functional apps for almost two years with speed and scale that outperform every other crypto platform I’ve seen.

Should we have spun off some team of devs, trainers, and marketers to support the Go version and get a bunch of those apps deployed beyond the proof-of-concept phase? Maybe we should have.

I’m grateful for the few projects (like [Humm.Earth](https://humm.earth/)) that ignored our suggestions and went live on the Go version of Holochain anyway. But there weren’t really enough projects like these for the world to take Holochain seriously.

![]({{ site.urlimg }}1_wjCqv9CcJDDVnNEx8GFvMw.png)

The Path Forward
================

Is it too late to leverage the Go version? Probably. We haven’t supported or made updates to the code in over 9 months.

And — again — there is a lot of good news still lurking in the Rust rebuild in terms of security and safety. (More detail for the technically inclined: strong elliptical cryptography, new dynamic DHT architectures, P2P networking which can reliably get through NAT and Firewall configurations, and a unified capabilities-based security model.)

But how do we recover from essentially holding the community back telling them to wait for the next great thing? Several ways come to mind:

*   **Creating Holochain Labs:** In response to demand — and volunteerism — we’re planning to launch an online space for Holochain-based projects to collaborate, recruit, share code, gather feedback, and garner financial support.
*   **Launching Holo TestNets:** We are currently launching different phases of a Closed Alpha of Holo, and even though there’s not a large ecosystem of apps to host on it yet, the ones made by the Holo dev team so far are [kind of a big deal](https://medium.com/h-o-l-o/a-tour-of-holos-initial-apps-45b00f7e9054). Open Alpha will be coming soon, and I expect we will be able to demonstrate dApp performance approaching typical cloud-hosted speeds.
*   **Shipping HoloPorts:** I know that many people are excited to have, hold, and begin to test and utilize their Holo hosting devices. We are approaching that moment. This will also give us a strong foundation of thousands of servers with capacity to host new apps.
*   **Improving usability for developers:** 1) We’re simplifying the [HDK](https://github.com/holochain/holochain-rust/tree/develop/hdk-rust) using Rust macros so that defining modules and functions is short and easy now. 2) We’re enabling querying of [Holochain using GraphQL](https://github.com/willemolding/holochain-graphQL-poc), which will make it really easy to have existing web apps work with Holochain: all you’ll need to do is write a Holochain app as your back-end to replace your database. 3) We’ll get those RAD tools [rebuilt](https://github.com/holochain/hcrs) soon to generate files, directories, CRUD functions, and basic tests, so that developing apps without experience with Rust will be much easier.

Despite any missteps over the past year, Holochain does have a lot of momentum. Our core base of supporters is strong, word has been spreading through an ever-growing canon of articles and videos, and the demand for Holo Token ([$HOT](https://icodrops.com/holo/)) has remained high (typically ~20x return over Bitcoin and ~40x over ETH since our ICO). We have seen an explosion of community support in influential places like Turkey and China, and there is a groundswell of promising projects right now in Australia.

Yes, some people (myself included) are tired of _hearing the talk_ of how great Holo and Holochain will be and just want to _see it running_. I’m excited that this moment has now arrived  via the Holo TestNets, and that soon people will be able to run responsive dApps at scale.

In this article I’ve highlighted some of Holochain’s strengths and successes while also being transparent about the fact that we haven’t had all the answers, and that, in retrospect, we may have made some strategic missteps.

I hope community members will weigh in with thoughts and feedback in the comments. What do you need from us? How can we serve you best?

Again, a big thanks to [Josh Zemel](https://medium.com/u/882884c74be6?source=post_page-----600812bc9ecc--------------------------------) for his co-writing and editing critical to getting this published. He’s turning to be a great partner in keeping articles flowing, and been patient with my gaps in availability for writing.
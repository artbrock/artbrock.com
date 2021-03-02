---
layout: page
title: Holochain vs. Hashgraph
permalink: 2018/03/05/holochain-vs-hashgraph
image: 1_L9loWlLxrpmNCGWWqLETNg.jpeg
categories:
- holochain
- crypto
- blockchain
- distributed systems
- hashgraph
---
[Originally published on [Medium](https://medium.com/holochain/hashgraph-vs-holochain-eb38d7dc1f8a)]

**…and when is consensus needed in distributed computing**

![]({{ site.urlimg }}1_L9loWlLxrpmNCGWWqLETNg.jpeg){:class="img-responsive"}
_Is “consensus” even a sensible word for a proof-of-work random lottery?_

There are many new platforms trying to make blockchains more scalable, or creating alternatives to the architecture of blockchain to fulfill on the aspirations of blockchain advocates, but that current blockchains fail to deliver on.

Hashgraph has been getting some press and many are excited about the speeds they promise and some of the videos and demonstrations they’ve shared. It is one of the closest innovations to Holochain that I’ve seen come out by people starting from a blockchain mindset. However, from my completely biased perspective, there are still a few gaps.

Hybrid of Data & Agent Centrism
===============================

Notice that all Hashgraph’s examples show the **agents** (labeled as A B C D E) and who is committing, sending, and receiving what transactions. Normally in blockchain explanations, they only focus on the chain of blocks, and maybe some info about the [nonces](https://en.wikipedia.org/wiki/Cryptographic_nonce#Hashing) needed from miners or stakers, but the data is never presented showing how every node actually receives transactions in a different order. This might cast doubt on the use of the word “consensus” when really blockchain just takes one node’s sequence as reality and drops all the others.

However, in Hashgraph, you can see how different agents are each building a different “reality.” Then they use some metadata about each agent’s state to enable them to build consensus based on gossip about gossip. Their algorithm looks at things from the perspective of EACH AGENT and then they somewhat arbitrarily say: “the median timestamp for a data element across agents shall be its official time.”

In the shift from data-centric blockchain toward agent-centric holochain, they are hybridizing.

The creators of Hashgraph made a partial mindshift from data-centric to agent-centric. And you can see how on Holochain, an app could also use exposed data about gossip and DHT timestamps to do its own variant of hashgraph consensus (except beware their patent).

A Fixation on Consensus
=======================

![]({{ site.urlimg }}1_ZBkp9awdfHK0cHBPoKrORw.jpeg){:class="img-responsive"}

If you hear blockchain people talk about distributed computing, it is all about consensus. In fact the Hashgraph folks even claim Byzantine Fault Tolerance is about consensus (and not the ability to tolerate a Byzantine Fault — actions from corrupt or malicious nodes). Why such a fixation on consensus?

Why should you have just one algorithm for manufacturing that consensus for ALL dApps on a platform? Aren’t there many contexts where no consensus is needed? Or where it would be valuable to engage in different social processes around disagreement? In fact, why limit yourself to only one reality when in some cases information about differences of timing could be valuable data?

In Holochain, you have implicit or soft consensus when a data element saturates a majority of the DHT neighborhood where that data element resides. A later attempt to PUT that data to the DHT will produce a collision. But what if it is okay to have the collision, and just say “Okay, two people have now invented the Calculus.” or whatever. So now you have two authors, with different timestamps, and histories, and so what?

Well the “so what” comes into play when the data is a rival resource — like a Twitter handle, a domain name, or a cryptocoin. In this case, you want to handle a collision differently and block the later addition telling them the name is taken or the coin is spent. For general computing on distributed apps, this covers 99.9% of use cases. And on Holochain, the way we recommend implementing currencies using agent-centric crypto-accounting instead of data-centric coins means you don’t use rival coins at all.

So the only remaining case not handled by the soft consensus of the DHT, is when the collision happens **before** the DHT neighborhood can get saturated by an entry from one author. So if two people try to register the same name at the same time, how do you resolve it?

Paths to Many Consensi
======================

We _could_ pretend there’s just one absolute answer like what the Hashgraph algorithm produces using median time of gossip signatures. Or we could recognize the importance of choice and let the app builder decide.

*   Maybe you start an auction and it goes to the highest bidder.
*   Maybe you look at their reputation for community contribution and let the greatest contributor have it.
*   Maybe you send them each a message to resolve the conflict with each other.
*   Maybe you vote on it.

The point is, that for the very small percentage of times you could even have this kind of collision for most distributed computing apps, why would you want to swallow that computational overhead for ALL OTHER non-colliding bits of data? Why rule out the possibility of context-appropriate consensus solutions by hard-coding in only one arbitrary approach?

If 99.9% of data in distributed apps is non-rival, or non-conflicting, shouldn’t we just trigger special consensus resolution on that .1% of the cases and bear the (computational or social) cost of that overhead only on those cases?

However, since Blockchain grew up with its ONE APP being about managing rival coins, everyone thinks consensus is at the heart of the matter of distributed computing. Maybe this is also why blockchains don’t scale for doing generalized computation for dApps. If blockchains can’t even scale coin transactions, which are kind of a ridiculously simple app (Basically: Do you have the key? Okay, then you can write new coins up to the total value of the old coin. Repeat.), how do they ever expect to run things at true Internet scales like Facebook with 520k likes per second?

My answer: [Holochain](https://holochain.org) — for lightweight, scalable, P2P dApps which actually get more efficient as more users join.
---
layout: page
title: Cryptocurrencies are Dead
permalink: 2016/09/16/cryptocurrencies-are-dead
image: 1__LfPEkAatuWrtNN1HTwasg.png
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/metacurrency-project/cryptocurrencies-are-dead-d4223154d783)]

(They just don’t know it yet.)

![]({{ site.urlimg }}1__LfPEkAatuWrtNN1HTwasg.png)

I believe the crux of the issue confronting current implementations of cryptocurrencies is that **you can’t govern something that doesn’t exist.**

The truth of that last statement is probably obvious, so let me clarify the connection to cryptocurrencies.

Cryptocurrencies are having crises of governance — Bitcoin about blocksize and other scaling strategies, Ethereum because the hard fork they made to try to save DAOhub in the midst of its crisis of having no way to authorize an update to a buggy smart contract. Plenty of other coins and systems have had their own issues along the way as well.

These problems are not incidental to the design of these systems, they are inherent.

Cryptocurrencies were designed to escape oppressive governance. Their creators have focused on optimizing personal autonomy and anonymity. The fact that we don’t know who stole $65 million from DAOhub or even who the original creator Bitcoin is, should make this fact obvious.

Why does this matter?

Any system that can’t regulate itself dies. If it can’t respond, adapt, or evolve, it’s dead.

The kind of governance we’re seeking is best thought of as a self-regulatory community. In other words, a community which has the necessary information, communication flows, and feedback loops to regulate its health and longevity.

So let’s spell out the issue more clearly.

In computer science, an ontology describes what EXISTS in a system. For example, In Bitcoin what exists are **transactions** organized into **blocks** linked in a chain. The first transaction in each block gets to create new **coins** (cryptographic tokens). The other transactions spend a coin by signing (with a **private key**) the previous transaction to a new owner (using their **public key** as their address/identity). There are also **nodes** with which you send and receive transactions.

Notice no people in that ontology. They don’t exist.

With no people, there are no relationships, no communication, no interconnection, no community. How can a community that doesn’t exist regulate itself?

You probably have a couple objections to my story, like:

1.  **People** obviously use bitcoin, so they must be connected somehow.
2.  Aren’t the people using bitcoin the **community**?

**People:** Keys are typically managed with a tool like an e-wallet. That’s not really core to Bitcoin, so there’s a very loose connection to wallets. And wallets are only loosely connected to people. People may have many wallets, or multiple people could share a wallet. So this loose connection to the ontology, basically means people aren’t in it at all. It could just be a trading program juggling keys and generating transactions without a person ever directly interacting with the keys or transactions.

**Community:** Just because you can categorize a group of people, doesn’t make them a community. Think of it this way, how could you get everybody who thinks cilantro tastes like soap to sing a song together? (BTW, singing together is a great example of self-regulatory feedback loops: choosing a key, tempo, being in sync, improvising harmonies, etc.) First of all, you don’t know who these cilantrophobes are since this characteristic is not clearly visible. They have no practical way of identifying who each other are, nor do they have contact information or communication channels open with each other. Nobody knows how many there are. Remember, you have to get EVERYBODY — not just a random few that wander into a website or a subreddit.

These cilantrophobes are an arbitrary conceptual category, not a community, in the same way that Bitcoin owners are not actually a community. Developers, miners, day-traders, and currency users have varying and often conflicting agendas, intentions, and incentives for participating. Which of those are the community? Who is in control?

Does this make it clearer? You can’t govern something that isn’t a thing, that is just a concept. It should also be clear, that something that exists only as a concept, certainly can’t govern itself either. It can’t take actions or make decisions.

This is exactly why we build pluggable governance into Holochain and [Ceptr](http://ceptr.org). Until people and community, along with the information flows required for that community to see its own patterns and issues are actually built into the functional ontology of cryptocurrencies, they can’t solve the problem of governance and collective self-regulation.

Cryptocurrencies are dead.

Long live cryptocurrencies!

— — — — — —

**Post Script:** Even though this was a 3 minute read, it is apparently too long for some to get past the title. For clarification, [I support cryptocurrencies](http://metacurrency.org) and am building [a platform for launching distributed apps (including cryptocurrencies](http://ceptr.org)). I am simply saying is that they must include capacity for self-regulation in their core design. The ones which do this effectively will supplant the ones that have no coherent means of evolving.

So please stop thinking I must be heartbroken that Bitcoin hasn’t crashed yet, I’m working on the stability of cryptocurrencies and [their viable scalable alternatives](https://medium.com/metacurrency-project/beyond-blockchain-simple-scalable-cryptocurrencies-1eb7aebac6ae).
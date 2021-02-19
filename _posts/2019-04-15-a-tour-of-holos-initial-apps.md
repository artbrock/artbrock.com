---
layout: page
title: A Tour of Holo’s Initial Apps
permalink: 2019/04/15/a-tour-of-holos-initial-apps
image: 1_XT3Vrnp8AUMa1_cNgd7vow.png
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/h-o-l-o/a-tour-of-holos-initial-apps-45b00f7e9054)]

With the release of Holo’s Closed Alpha test network, I thought this would be a good time to share about the apps available for hosting on Holo. While there’s not a huge ecosystem yet, the apps we’re releasing are kind of a big deal, both for their individual capabilities and for their usefulness as building blocks for further app development.

Let’s have a look at the apps and why they matter.

![]({{ site.urlimg }}1_XT3Vrnp8AUMa1_cNgd7vow.png)

**DeepKey** — Key Management
============================

Something that continues to amaze me about the crypto space is how major hacking and thieving events are considered par for the course. How many times do we need to hear about this or that multi-signature bug, or so-and-so’s death, that resulted in millions of dollars lost? There’s been a remarkably high level of tolerance for these situations, but the way I see it, crypto cannot go mainstream with that kind of risk profile. A solid key management foundation has to be a core building block of a robust Web 3.0.

Holochain’s implementation of a Distributed Public Key Infrastructure and key management protocol, DeepKey, addresses this issue directly. Thanks to Holochain’s agent-centric architecture, DeepKey is able to associate keys not with actual data, but with authorship and control of data. The legitimate author can replace or revoke keys in use at any time, by employing a master seed and/or revocation key that are never stored within applications.

DeepKey is the one application that we are expecting everyone who runs Holochain apps to have. Technically someone could use another key manager that replicates the features of DeepKey, but DeepKey is the one that ships natively with Holo.

I’m excited about DeepKey. I don’t know of any other crypto apps that assume this kind of approach to key management. And I believe something like it is necessary if we are going to make crypto safe for normal people to use.

**Personas** — Personal data management
=======================================

While keys control access to data, they don’t serve any function with regard to identity verification; they don’t demonstrate who you actually are. That’s where Personas comes in.

Personas provides a convenient way to own and manage your personal identity. You can change your information all in one place, and you can revoke applications’ access to it as desired. It’s a lot like how you can log in to a bunch of websites and apps these days using Google or Facebook… with the difference being that Personas is ‘self-sovereign’, meaning you have full control and ownership.

What’s more, you can create multiple identities within Personas — say, if you have one name that you use in the business world, and another when you DJ or publish poetry. Maybe you’re James over here and Jim over there, or maybe you use a married name in some contexts and an original name in others. You choose which identity to use in any given application, and access to those identities can be easily revoked or swapped.

Incidentally, this revocability of data access also makes it easy for apps to be GDPR compliant.

Note that Personas is not designed to _verify_ that you are who you say you are; its purpose is for you to _say_ who you are, store that information, and easily share it with apps and the other people using them. We are addressing verification separately with a KYC application and ecosystem targeted for release in the next round.

**Holo Hosting App** — Bridging web users to crypto apps on Holochain
=====================================================================

For all of the buzz about soon-to-exist decentralized social networks, scalable payment systems, and advertising engines, such a reality simply isn’t possible with blockchain, at least not any time soon. The dApps that currently exist are limited in scope and ability, and, because of the overhead of gas payments, are often constrained to high-revenue addictions like gambling.

By contrast, most activities people currently do on the web are possible to build on Holochain. It’s fast enough and scalable enough to run the likes of Facebook, Twitter, LinkedIn, Wikipedia, Reddit, and so on. In order for these kinds of apps to be valuable, though, they need to be accessible to everyone, not just users running Holochain software. That’s where Holo’s hosting system comes in.

It’s probably worth taking a moment to distinguish clearly between Holo and Holochain, since this is often a source of confusion.

*   **Holochain** is a data-integrity engine for powering distributed apps without encountering the scalability bottlenecks common to blockchains. It has no built-in currency.
*   **Holo** is a hosting company that provides hosting infrastructure for Holochain apps to be served to regular web browsers. Holo works by tapping into computing power wherever it already is, providing an alternative to centralized hosting services like Amazon, Google, and Microsoft’s Azure. This is analogous to how AirBnB sells more room-nights than the largest hotel chains without ever having built a hotel. Holo does have a native currency, HoloFuel, to account for all the micro-transactions involved in hosting.

Okay, now we get back to the Holo Hosting App, which is the app that allows anyone to provide virtual Holochain space (and generate revenue in doing so) to those who have not installed Holochain. The app match-makes between host and user in real time, taking into consideration the performance metrics of the host and the requirements of the app, as well as constraints and preferences that are settable by the host and app publisher.

The Holo Hosting App bridges from the Web 2.0 world to the Web 3.0 world by making crypto apps available in standard browsers to users with no knowledge of crypto, keys, or gas. In this way, massively scaled crypto applications become not only possible, but user-friendly as well.

**HoloFuel** — P2P crypto-accounting-based currency that does not require global consensus
==========================================================================================

HoloFuel is the payment system that powers the Holo hosting framework. It is optimized for high-volumes of micro-transactions, in order to account for the billions of small actions that hosting involves. It is _not_ a token-based cryptocurrency, but rather is _account-based_, meaning that it uses crypto-accounting to track balances without use of a token.

Unlike with token-based currencies, there is _no limit to the number of transactions per second_ (TPS) that can take place within the HoloFuel framework, because it [doesn’t require global consensus](https://medium.com/holochain/beyond-blockchain-simple-scalable-cryptocurrencies-1eb7aebac6ae) to ensure the integrity of its transactions. That may seem like a bold statement, but it’s one of the fundamental principles of Holo and Holochain: instead of requiring global consensus on what was ‘said’, HoloFuel builds in ways to ensure integrity in everyone’s ‘speaking’, as validated by a small number of randomly selected nodes (25 to be exact in HoloFuel’s initial configuration).

As a result, asking how many transactions HoloFuel can process per second is like asking how many web pages the internet can serve: the answer increases with the number of hosts on the network, not limited by any inherent speed bottleneck.

By comparison, Bitcoin currently uses 1/200th of the world’s electricity to process a meager 5 TPS. While some next-gen blockchains claim TPS improvements, most achieve this mainly through increased centralization. HoloFuel remains fully distributed and efficient at any scale, without the [rich-get-richer centralization pressure](https://medium.com/holochain/blockchain-blind-spots-1904d490218d) common in other cryptocurrencies, and with no computing power wasted on proof-of-work or proof-of-stake algorithms.

Also, because HoloFuel is technically an implementation of accounting, as opposed to a token-based system which creates and implements new securities, it may be less exposed to regulatory risk.

**HoloChat** — A chat back-end to power multiple User Interfaces
================================================================

HoloChat is a chat engine that can easily power a variety of chat and commenting user interfaces. Some examples of what’s possible include:

*   Instant messaging, like Telegram
*   Multi-channel team chat, like Slack
*   A chat/forum site, like Reddit
*   A website commenting tool, like Disqus
*   Live customer support chat

One neat effect of having a common chat back-end across all these UIs is that you might log in to Holochat directly and view all of your comments across different websites — comments which, by the way, you own and control.

HoloChat is the one consumer app that launches with this initial round, but it’s flexible enough to be considered many apps in one.

**hApp Store** — App directory
==============================

The hApp Store is a distributed app for distributing distributed apps. I believe it’s the first distributed app store; all others I’m aware of are centralized. As of now the hApp store contains a directory with names and descriptions, and it will soon include ratings, reviews, and various types of tagging.

With the hApp Store, we can even make the distribution of our own software decentralized, which I think is pretty cool.

**Apps coming in the next release for Open Alpha**
==================================================

Finally, here’s a preview of apps coming in the near future:

*   Source chain backups (including private entries)
*   Built-in file sharing
*   KYC ecosystem for HoloFuel, hosts, app providers, & devs
*   A Holochain of Holochains (HCHC) for publishing apps, receiving technical feedback on them, and making them visible in the hApp store.

**All of these apps can be building blocks for other apps**
===========================================================

Each of these apps have powerful individual functions that address problems similar to what other projects have raised tens or hundreds of millions of dollars to solve. Yet since Holochain enables easy bridging between applications you can use them like LEGO blocks for your own app, or blend many micro-apps into a single user interface. This means dev teams don’t need to build huge, monolithic, apps that try to do everything.

It’s really a dynamic sandbox we’re creating. At our hackathons it’s been amazing to see the collaborative space that opens up once developers understand the modular and bridgeable nature of Holochain app development.

I very much look forward to seeing what people create with these initial apps.

_Learn more and follow us at Holo’s_ [_website_](https://holo.host/) _or_ [_publication_](https://medium.com/h-o-l-o)_, or Holochain’s_ [_website_](https://holochain.org/) _or_ [_publication_](https://medium.com/holochain)_. You can also_ [_follow us on Twitter_](https://twitter.com/h_o_l_o_?lang=en) _or_ [_request an invitation_](mailto:help@holo.host?subject=Request to join the chat community) _to our chat community._

_Acknowledgements: Many thanks to_ [_Josh Zemel_](https://medium.com/u/882884c74be6?source=post_page-----45b00f7e9054--------------------------------) _who worked with me to turn my notes into a post ready to publish._
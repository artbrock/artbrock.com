---
layout: 	post
title:    Did Holochain Go Astray
date:     2019-01-26 19:54:50 -0700
date_gmt: 2019-01-26 02:54:50 -0000
image: 		
status:     	publish
published: 	  true
author: 	    Arthur Brock
author_login: artbrock
author_email: artbrock@holochain.org
author_url: 	http://artbrock.com
categories:  [post]
comments: []
tags:
- Holochain
- Usability
- Strategy
- Open Source Community
- Distributed Applications
- Software Development
---

# Did Holochain Go Astray?

## A Quick, Strong, and Easy Start
Eric Harris-Braun and I started building Holochain on New Years Eve at the end of 2016. Just two months and one week later we had our first Hackathon in San Francisco for people to build apps on Holochain.

In fairness, it was an invitation only event for friends who had an understanding the tools were not yet mature. Yet even then, people built P2P applications in those few days in JavaScript and Lisp that basically worked.

The people who came were somewhat shocked. We had folks who had already wrestled with launching tokens and dApps in Solidity on Ethereum. They raved about how much easier it was to build on Holochain and how they felt safer to launch an app on it knowing they could manage its reach and scope, instead of the **only** option being "written in stone" on a permanent blockchain.

They said things like: *"Wow, its like a distributed app platform that's actually distributed!"*

And *"It feels like we're building the plane while flying it, but it's exciting that actually flies!"*

## Holochain's Capacities Expand
Over the next year or so, we made a lot of improvements on all levels: added features, improved the testing suite, refined our DHT/gossip models, identified idioms and app development patterns that worked well on an eventually consistent, sharded data store on a validating DHT.

We also had LOTS more Hackathons: Barcelona Spain, Vaduz Liechtenstein, Riga Latvia, Bristol UK, Porto Portugal, Sebastapol California, London UK, Copenhagen Denmark, Sydney Australia, Melbourne Australia, Vancouver BC, Austin Texas, New York City (twice), Denver Colorado, Sao Paolo Brazil, Amsterdam Netherlands, Pittsburgh PA (CMU), etc.

At these events, people built around 60 cool apps to various stages of proof-of-concept, to working prototype, to providing a pretty polished experience. Some noteworthy ones that come to mind:
 - [Clutter](https://github.com/holochain/clutter) (P2P Twitter),
 - [HoloChat](https://github.com/holochain/holochat) (Slack alike) *[new version](https://github.com/holochain/holochat-rust
) rebuilt on Rust*,
 - [TrustGraph](https://libraries.io/github/trustgraph/trustgraph-holochain) (peer ratings and reviews),
 - [DPKI]() (Distribute Public Key Infrastructure),
 - [HoloDex]() (indexing overlay app for sharded DHT),
 - [hAppStore (distributed directory for distributing distributed apps),
 - [Fractal Wiki (like Decko),
 - [Transactor (mutual credit currency),
 - [Touchpoints (NFC enabled interaction system),
 - [Federated Wiki,
 - [Community Book Sharing Library,
 - [RaveMaker (party announcement and support system),
 - [Prediction/Betting markets,
 - [Comet (P2P Reddit),
 - [P2P Credit Clearing Network,
 - [Medical drug provenance / supply chain tracking,
 - [Electricity Smart Meter Mgt (IoT data recording / kilowatt sharing)
 - [UnMute (like uncensorable Medium.com),
 - [HoloVault / Personas (personal/identity data manager)
 - [New Craigslist]() (self-explanatory) *also [implemented in OCaml](https://github.com/struktured/NewCraigsList)*,
 - [HoloChess](),
 - [Battleship,
 - [Massively Multiplayer Pong,
 - [MinerSweeper (real-time-ish multiplayer game),
 - [Errand (Trello-like kanban boards),
 - [Omni](https://github.com/OmniProject/omni) (publication of scholarly peer reviewed articles),
 - [NAME? (video streaming),
 - [Cannabis supply chain accountability/provenance
 - [Shared To-Do List,
 - [Happy virus]() (Amsterdam)

Whew! There's a bunch more I'm probably not thinking of at the moment. But the point is, when people talk about Holochain as if it is vaporware and doesn't exist yet, they clearly don't realize A LOT OF THINGS have been built on it and worked just fine.

More importantly, there are things that Holochain makes easy that are rather difficult to do on other decentralized platforms. Just try to do a real-time-ish game like MinerSweeper! Or live-video-streaming on blockchain! Or easy Public Key Infrastructure that is fully distributed.

## Economic Sustainability for Open Source Infrastructure
Some of you may already know this, but Holochain is a small part of a much larger technology infrastructure design for a replacement for most of our existing computing, communications, governance, and currency systems called [Ceptr](https://ceptr.org).

We specifically took one small piece of Ceptr to provide a standalone framework that could go head-to-head with blockchain and outperform it in every way. We called it Holochain. One main reason we did this was to bring part of our P2P technology design into mainstream use, so we could establish long-term financial viability for both Holochain and Ceptr.

To achieve this we designed a commercial/fundable project of providing cloud-style hosting on top of Holochain as a scalabilty layer.
 multi-stage funding strategy with the first phase involving a crowdfunding campaign for hardware and an ICO for the software, knowing its days were numbered, with a desire to raise the bar of integity for ICOs and their projects. We structured ours quite differently than most with specific attention on having it be [ethical](ethical ICO) and responsible as possible.

So we designed [HOLO](https://holo.host) as a major project to be able to bridge obscure and marginalized crypto-apps to mainstream users by letting them just use their web browser as if it were any data-driven web site. We know Holochain has no inherent speed or scale bottlenecks, so that theoretically these Holo-hosted apps could scale to the size of Facebook or Twitter. And there wasn't a blockchain-based project out there who could get anywhere near our performance or ease of devlopment.

So [we sold Holo hosting boxes on IndieGoGo](https://IndieGoGo.com/....) and did an Initional Community Offering pre-selling hosting power on the Holo hosting network.

**Clarification:** Holochain does not have a token or currency built in. It is designed for scalable P2P apps that people self-host so they can control their identity and data... not for tokens. Blockchain is so inefficient it has to pay people to run it and burn through those hashes in Proof-of-Work or place stakes in Proof-of-Stake. But Holochain apps are lightweight enough to run on your phone. We tested between 75-100 full nodes running on a Raspberry Pi with just 2Gb of RAM.

**Clarification Part II:** Holo does have a currency. It has to have one that can do billions of micro-transactions daily so it can run an edge-based app hosting network. In other words, like AirBnB sells more room-nights than the largest hotel chains, but has never built a hotel. Holo seeks to compete with the big cloud hosting companies without ever having to build a data center by using the efficency and scalability of Holochain to tap into computing power wherever it already is. This computing power is to form the basis of Holo's cryptocurrency with the currency always being backed/redeemable for the tangible asset of computing power. And the 1% transaction fees could fund Holochain and possibly even some of the development of Ceptr.

## Bulletproofing is Expensive
Once we sold out our ICO for around 30,000 ETH (when ETH was worth a little over $600), we needed to refactor Holochain for increased security and to run in browsers and on mobile phones and tablets so we could truly go mainstream.

We decided to rebuild in Rust so we could get the strong security, stability, and concurrency safety it provides, as well as be able to compile to Web Assembly (WASM) to run on browsers and light-clients. In mid-May, with funding and a larger development team, we estimated we needed 3 months to rebuild the Holochain prototype which had been built in Go.

We had been planning the rebuild for a while, and some of our developers we very excited about it. We targeted August 15th for our first Alpha release with all the features of the Go prototype.

## Dev Targets Missed
Five months later, as of January 15th, we still don't have ALL the features of the original prototype. In fairness, we have a lot of other improvements to security, testing, troubleshooting, and the underlying infrastructure, but we still haven't implemented all the features of the original. Now we're poised to launch a Closed Alpha version of the Holo network on top of this partial functionality.

The learning curve and slowdown from building on Rust may not be as bad as it seems. Theoretically, it should save us a lot grief later and be significantly more secure. Rust is so strict that it won't let you compile until you handle all sorts of possible vulnerabilities that most other languages just let you get away with. So it could be saving us later time and pain in fixing issues.

However, that's not the part that concerns me the most -- **Holochain has gotten harder to use.**

## Usability for Web Developers
We positioned Holo to be a web app hosting framework, but now have a version of Holochain that only lets you build apps in Rust. And how many web developers code in Rust?

After this Closed Alpha launch so that we have some kind of hosting network for the micro-servers we sold on IndieGoGo to be able to run something, we will probably scramble a bit to pop up V8 or SpiderMonkey so that web developers can build apps in JavaScript and a familiar context. Either framework can run any Rust apps compiled to WASM. (Note: We don't have widespread agreement from our devs on exactly what approach to take here.)

Luckily, web developers can still use whatever frameworks they're comfortable with for building the UI (React, Vue, Angular, Vanilla JS, whatever). That usability feature of Holochain has still carried over.

But here we are over a half year later, and instead of having a thriving ecosystem of apps on Holochain, we are starting over in a language that few devs have experience with.

## Bootstrapping the App Ecosystem
I'm concerned we underplayed the maturity of the prototype and discouraged people who were ready to build on it to wait for the Rust version. Now much of the world thinks Holochain is still vaporware when we have had a framework for almost 2 years that outperforms every other crypto platform that I've seen.

Should we have spun off sup ome cadre of devs, trainers, and marketers to get a bunch of apps up and running beyond the proof-of-concept phase? Yes, it seems we probably should have.

Luckily, there are few projects (like [Humm.Earth](https://humm.earth)) that ignored our warnings and did go live on the Go version of Holochain.  But there were not enough of these for the community at large to take Holochain seriously.

Is it too late to leverage the Go version? Probably. We haven't supported it or made updates in almost 6 months.

## Recovering from Misfire
So, how do we recover from essentially holding the community back for 6 months telling them to wait for the next great thing?

We are poised to launch Holo, but don't have an ecosystem of apps to host on it yet. The Closed Alpha will pretty much only have apps made by the Holo/chain dev team. We hope to get more apps going once people see this infrastructure is for real. But if we do a slight reset (to JavaScript as mentioned above), does that add more delay? Or does it accelerate adoption because of familiarity for web devs?

Realistically, the last 6 months have not been not all bad. We still have a strong core base of supporters, and word has been spreading over the past year. In places like Turkey, there seems to be an explosion of support stemming from some vocal and respected thought leaders. However, some people (myself included) are tired of the *talk* of how great Holo/chain will be and just want to see it running.

I've probably blathered on long enough here...

I'm just trying to be transparent about the fact that we don't have all the answers, and in retrospect, have probably made some strategic mistakes. I've opened a lot of inquiries in this post, and I hope community members will weigh in with thoughts and feedback in the comments. How do we best serve you?

I think I'll start a new post to highlight how seriously scalable and resilient the Holo hosting network architecture is. I'm really excited about getting some Alpha going so we can see what speeds and performance are like!  


=======

SLAs and resilience patterns of the Holo hosting network

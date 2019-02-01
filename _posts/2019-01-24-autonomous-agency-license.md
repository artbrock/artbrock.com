---
layout: 	post
title: New Open Source License for P2P Tech
date: 2019-01-24 19:54:50 -0700
date_gmt: 2019-01-24 02:54:50 -0000
image: 		
status: 	publish
published: 	true
author: 	Arthur Brock
author_login: 	artbrock
author_email: 	artbrock@holochain.org
author_url: 	http://artbrock.com
categories: 	[post]
comments: []
tags:
- P2P
- Open Source
- Software Licensing
- Cryptography
- Distributed Applications
---

# Cryptographic Autonomy License

## TL;DR; Copyleft / Open Source plus a Performance Kicker

You can use Holochain as free and open source software with a couple of conditions:
 1. The source code of Holochain or any derivative works must be provided under compatible open source terms which include this condition and the following condition regarding privacy of cryptographic keys.
 2. You only have permission for "public performance" of Holochain and use of its APIs for managing data integrity of distributed applications if you maintain End-User privacy and autonomy of their private cryptographic keys.

## Public Performance of Software?

Software licenses are a part of copyright law where you are granted the right to copy and run "our work" (software code) under specific conditions. Music rights are also a part of copyright law, but include constraints not just about the distribution of copies, but about the public performance of "our work."  For example, Artist A may need to get permission from Artist B to perform B's song at A's concert.

I've never seen a software license invoke this "public performance" clause, and it will likely stir up some controversy and present us with challenges getting our license accepted as an authorized Open Source license, but it is the only way we've been able to find to release our software with appropriate protections for end-users.

## Why do End-Users need Special Protection?

What if someone released a cryptocurrency which identifies itself as peer-to-peer app that is extremely easy to use? You just install it on your phone, tablet, or computer, and using the power of cryptographic keys to control your account/wallet, you can do direct transactions with any other account without the need for centralized servers.

That sounds pretty good so far, but this particular application generates the crypto keys for your account from a key server from software developer. It turns out the developer ALSO has a copy of everyone's private keys that control their accounts and can spend your funds whenever they want. Would you consider this a valid or honest version decentralized cryptocurrency?

Holochain is designed to give end-users control of their identity, their data, and their participation. However, this is accomplished by peer-to-peer validation rules for data integrity across a shared and sharded data store which are orchestrated by cryptographic keys. And most end-users of software have no realistic way of knowing whether they are the sole controller of their cryptographic autonomy.

## Okay, but Why the Weird Performance Clause?

Legally, our license can only protect the code that WE wrote. Our software is being licensed by a DEVELOPER to run the currency or chat or social network they just built. We are trying to say the only valid way to use our code is if that app's END-USERS are the sole authors and controllers of their own private keys.

That is hard to shoehorn into the legal frameworks available to us today. We can't apply copyright protections to the keys that our licensee's end users create. So our attorney came up with this creative work-around leveraging the public performance dimension of copyright. You don't need permission from a musician to perform their work in private, but in public is another issue.

A corporation might want to implement a serverless P2P Slack app where the company still controls the keys, seeds, or revocation keys so that they could read everyone's chats and private messages, post as if they were that person, or revoke someone's keys and access. I see why a company might want to do that for their internal employees, and as long as they keep it internal, we probably can't stop them.

However, if they want to run their online community, on a PUBLIC network such as the Internet, where they have each user providing a little server power to orchestrate the whole thing so the company now has zero server or infrastructure costs, well... now maybe we can assert some protections on behalf of those end-users to make sure that they at least control their own data on their own device.

## Avoiding False Security and Advertising

We want "Holochain" apps to come to be trusted as maximizing end-user autonomy and control, and as that starts to happen, we can't let someone claim their app is a "Holochain" app if they are actually maintaining central control of the cryptographic keys. Otherwise, people will think they're in control of their accounts, money, personal information, or communications, without realizing someone could strip them of their autonomy via revocation keys or a master seed.

Frankly, we don't see any way to freely share Holochain with integrity, that does not include these protections for the people who are not technical enough to make this determination for themselves.

You might think you are one of the people who can tell for yourself. You bought a Trezor or Ledger hardware wallet and the key never leaves the device! Except of course if the device is ever left unsupervised and someone pulls it, or a "man in the middle" changed the seed before you received it, or maybe Trezor or Ledger actually keep generate all user seeds from a secret master seed so they can easily compromise everyone's private keys.

It can be challenging even for technical experts, so if someone launches a fraudulent cryptocurrency that they're marketing as running on Holochain and under the control of end users, they're rights to the license should be nullified if they are defrauding their end users.

## What Does this Mean for Your App?

So you want to build an app on Holochain, and want to know how this effects you.

First, we're NOT saying a dApp which uses the Holochain APIs must be released under an open source license. We'd encourage that, but the copyleft nature of the Holochain license is not intended to force everyone who uses Holochain to launch an app, to be constrained to open source.

However, if you rewrite parts of Holochain itself, the source code for those elements need to be shared. In part, this is vital to ensuring the private key protections for end users. We need to be able to see you're not building things into Holochain to circumvent, leak, harvest user's keys.

## New Frontiers of P2P Law and Software Licensing

For distributed apps, cryptographic keys fall into a strange middle zone between code and user data. Code is ***functional*** and provides the processes for routing and transforming user data as inputs or outputs in a computing system. Data is typically created by end users, and is processed and stored by the code.

Keys are also functional. In Holochain they orchestrate where data is stored, who validates the data, who controls data, proof of who created the data, security and encryption of storage and communications, and progressive hashing and signing which makes data immutable and ensures its integrity, etc. But end-users should be the AUTHOR of their own private keys, and compromising their sole AUTHORship literally compromises their AUTHORity and AUTHORizations within the system.

Software licenses to date are for centralized implementations of programs as either standalone or client-server systems. A P2P dApp on Holochain is an integrated whole, with processing and storage divided across all user's machines.

The whole architecture unravels, if our license can't provide protections which maximize end-user agency and autonomy, and we fall right back into centralized patterns again.

If it means we can take back control of our own identity and data from the Facebooks of the world, we think it's worth a little stretching of software licensing into the performance protections already provided by copyright law.

Do you see another way to do this?

**Closing Notes:** As we worked with [Van](#) and distilled everything down to this core issue of Cryptographic Autonomy, we renamed the license, so this supercedes [my previous post about the Human Commons License](#).


# Why we need a new Open Source License for P2P dApps

**Background:** I [wrote a prior blog post](#) about how we envisioned implementing a license for Holochain and distributed applications built on Holochain. We worked with a lawyer [Van](#) to drill deeper and refine exactly what we could and couldn't accomplish within the purview of a software license, as well as how we could justify to the folks at OpenSource.org that a new license was required because of a truly new use case. This transformed the end result significantly, such that it has changed from being called the Human Commons License to the Autonomous Agency License. I hope to clarify why in this post.

## Normal Software Licenses Assume Centralization


## Scalable Crypto-Apps are an Orchestrated Whole

Someone in our community asked Cory Doctorow to look at the Human Commons License post and provide feedback. First, he said most people who think they should create a new license are probably wrong about the need for it (I agree). And then he proceeded to completely fail to see the need for a license which is conditional on the method of performance with regard to control of private/public keys.

Think of it this way... What if someone released a blockchain-based cryptocurrency called PsychCoin, which seemed like most other coins, except under the hood, the keys that you get for your wallet are not really under your control. You have to use keys which are generated by a central authority, so therefore they have a copy of your private keys and could seize control of your funds at any time. Should this qualify as a proper implementation of a decentralized cryptocurrency?

You see, on Holochain, you can make user-friendly web apps that look just like the things people are used to using under centralized control. Except these apps are actually operating completely peer-to-peer. In this scenario, **users host themselves** on a kind of micro-server and share data across an efficient and sharded DHT. The operations of the DHT and the integrity of the data are orchestrated across the whole network of these micro-server-peers by use of cryptographic keys.

It would be easy to package up a new Slack-like chat app in Electron, for example. People would have the same experience as they have now when they install the Slack desktop app. Except in this case, there is no Slack server in the middle -- peers coordinate data with other peers to provide an essentially identical experience.

A **proper** Holochain app would have the user generate their own public/private keys and never let the private key go over the wire or even be stored without at least being password encrypted. However, it would be quite easy for the app developer to secretly run a key server in the background, quietly issuing keys to each user that are actually under the central control of the developer. Now they have the power to step in and assume control of your account or lock you out. This was accomplished just by changing how the private keys were generated and stored.

There are valid reasons someone would want to do this. A corporation may want to have central control of all their employees' accounts, and be able to supervise (spy on) their activities. However, we are suggesting **this is not a use of the Holochain software for its intended purpose**. We are sharing Holochain freely as open source software to give people back control of their identity and data, not to fool them into thinking they're in control when they're not.

This centralized approach to using Holochain strips people of the autonomy and agency that our architecture is designed to provide, and most users are not technical enough to assess the security of their private keys. In the case of **central** control of private authoring keys, revocation keys, or the seeds for generating any of these keys, you cannot use Holochain under the free open source license, and cannot represent your application as a Holochain application at all.

We haven't decided if or how we would license our framework for this kind of user hosted, but centrally controlled purpose. It would need to be some sort of commercial license, and used under a different product name so that end-users who have come to trust Holochain-based apps are not fooled into believing they have the same powers as when keys are truly under their control.

## Code vs. Data

Are cryptographic keys data? Or are they integral to the functioning of the code of crypto-app?

If keys are just data, then what business do we have telling people how they have to organize their data?

If they are code (which is what is being licensed from us), then wouldn't we have to provide the keys themselves and fall unwillingly into centralizing control of the keys so we can make sure nobody else does?

How can we write a license which validly constrains the way keys are generated and controlled?

See normally, you can't write a software license that limits the end-user's purpose for using the software. You can't write a license which says, "Anyone can use this software for free unless they're an oil company, or perform testing on animals."

However, there are provisions for constraining the **public performance** of the software, and that is what we are leveraging to ensure Holochain is used as it is intended to perform -- providing autonomy and agency to its users.

## For Use in Conjunction with a Data Commons License

Holochain is not just about individual autonomy, but about the social coherence that emerges from the orchestrated whole. So while the software license


<--Based on feedback, I'd say I failed to convey clearly what the license was really about. --/>

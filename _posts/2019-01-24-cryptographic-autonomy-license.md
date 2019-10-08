---
layout: page
title: Basics of the Cryptographic Autonomy License
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
permalink: /2019/01/24/cryptographic-autonomy-license
tags:
- P2P
- Open Source
- Software Licensing
- Cryptography
- Distributed Applications
---

# The Basics of the Cryptographic Autonomy License

In this article, I boil the Cryptographic Autonomy License down to its most basic salient points to try to make it clear why we need a new kind of open source license for distributed P2P software, and how we seek to achieve protections for end users by leveraging a novel application of existing copyright law.

## TL;DR; Copyleft + Performance

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

Legally, our license can only protect the code that WE wrote. Our software is being licensed by a DEVELOPER to run their app (the currency, chat, or social network they just built). We are trying to say the only valid way to use our code is if their app's END-USERS are the sole authors and controllers of their own private keys.

That is hard to shoehorn into the legal frameworks available to us today. We can't apply copyright protections to the keys that our licensee's end users create. So our attorney suggested a creative work-around leveraging the public performance dimension of copyright. You don't need permission from a musician to perform their work in private, but performing in public is another issue.

A corporation might want to implement a serverless P2P Slack chat where the company still controls the keys, seeds, or revocation keys so that they could read everyone's chats and private messages, post as if they were some person, or revoke someone's keys and access. I see why a company might want to do that for their internal employees, and as long as they keep it internal, we probably can't stop them.

However, if they want to run their online community, on a PUBLIC network such as the Internet, where they have each user providing a little server power to orchestrate the whole thing so the company now has zero costs for servers or infrastructure, well now maybe we can assert some protections on behalf of those end-users to make sure they at least control their own data on their own device.

## Avoiding False Security and Advertising

We want "Holochain" apps to be trusted as maximizing end-user autonomy and control, and as that starts to happen, we can't let someone claim their software is a "Holochain" app if they are actually maintaining central control of end-user cryptographic keys. Otherwise, people will think they're in control of their accounts, money, personal information, or communications without realizing, at any moment, someone could strip them of their autonomy via revocation keys or a master seed.

Frankly, we don't see any way to freely share Holochain with integrity, that does not include these protections for the people who are not technical enough to make this determination for themselves.

You might think you are one of the people who can tell for yourself. You bought a Trezor or Ledger hardware wallet and the key never leaves the device! Except of course if the device is ever left unsupervised and someone pulls it, or a "man in the middle" changed the seed before you received it, or maybe Trezor or Ledger actually keep generate all user seeds from a secret master seed so they can easily compromise everyone's private keys.

The point is it can be challenging even for technical experts, so if someone launches a fraudulent cryptocurrency that they're marketing as running on Holochain and under the control of end users, they're rights to the license should be nullified if they are defrauding their end users by maintaining central cryptographic control.

## What Does this Mean for Your App?

So you want to build an app on Holochain, and want to know how this effects you.

First, we're NOT saying a dApp which uses the Holochain APIs must be released under an open source license. While we might encourage that, the copyleft nature of the Holochain license is not intended to force everyone who uses Holochain for their app, to be forced to release it as open source.

However, if you rewrite parts of Holochain itself, the source code for those elements need to be shared. In part, this is vital to ensuring the private key protections for end users. We need to be able to see you're not building things into Holochain to circumvent, leak, or harvest user's keys.

## New Frontiers of P2P Law and Software Licensing

For distributed apps, cryptographic keys fall into a strange middle zone between code and user data. Code is ***functional*** and provides the processes for routing and transforming user data as inputs or outputs in a computing system. Data is typically more like passive content, which may be created by end users, processed, and stored by the code.

Cryptographic Keys are both user data and functional. In Holochain they orchestrate proof of authorship of data, where data is stored, who controls data, who validates the data, security and encryption of communications and storage, operation of chain structures for progressive hashing and signing which establishes its sequence and integrity, etc. But end-users must be the AUTHOR of their own private keys, because compromising their sole AUTHORship literally compromises their AUTHORity and AUTHORizations within the system.

Software licenses to date apply to centralized implementations of programs as either standalone or client-server systems. A P2P dApp on Holochain is an integrated whole, with processing and storage divided across all user's machines.

Without integrity of keys this whole architecture unravels. If our license can't provide protections which maximize end-user cryptographic autonomy, then we fall right back into centralized patterns of control.

> We are sharing Holochain freely as open source software to give people back control of their identity and data, not to fool them into thinking they're in control when they're not.

If it means reclaiming the Internet from the Facebooks of the world, we think it's worth a little stretching of software licensing into the performance protections already provided by copyright law.

Do you see a better way to accomplish this?

**Closing Notes:** As we worked with [Van](#) and distilled everything down to this core issue of Cryptographic Autonomy, the name of the license evolved, so this supercedes [my previous post about the Human Commons License](#).

---
layout: page
title: Understanding the Cryptographic Autonomy License
permalink: 2019/02/22/understanding-the-cryptographic-autonomy-license
image: 1_-SxXns7cOdJqm6owhaP9fQ.png
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/holochain/understanding-the-cryptographic-autonomy-license-172ac920966d)]

**Why crypto software licenses need to protect user’s control of their keys.**

Other posts about this license have gone into more detail, but in this article, I boil the Cryptographic Autonomy License down to its most basic salient points to try to make it clear why we need a new kind of open source license for distributed P2P software, and how we seek to achieve protections for end users by leveraging a novel application of existing copyright law.

![Keys… keys… who’s got the keys?]({{ site.urlimg }}1_-SxXns7cOdJqm6owhaP9fQ.png)

TL;DR; Copyleft + Performance
=============================

Holochain’s license boils down to this: You can run Holochain as free and open source software with a couple of conditions:

1.  The source code of Holochain and any derivative works must be provided under compatible open source terms which include this condition and the following condition related to privacy of cryptographic keys.
2.  You only have permission for “public performance” of Holochain (including use of its APIs for running your dApp) if you preserve each end-user’s privacy and autonomy of their private cryptographic keys.

> **If the privacy of user keys is compromised, then so is the ownership of their data, as well as user’s control of their own copies of the software**.

Public Performance of Software?
===============================

Software licenses are a part of copyright law where an author can grant the right to copy and run “their work” (software code) under specific conditions. Music rights are also a part of copyright law, but include constraints not just about making and distributing copies, but also about the public performance of “their work.” For example, The Indigo Girls are supposed to get permission from Simon & Garfunkel to perform [_American Tune_](https://www.youtube.com/watch?v=RHPokSACKJo) in concert.

I’ve never seen a software license invoke this kind of “public performance” clause, so it may stir up some controversy and make it challenging to get our license accepted by OpenSource.org; but it is the only way we’ve found to release Holochain with responsible protections for end-users.

Why Do End-Users Need Special Protection?
=========================================

Suppose someone releases a cryptocurrency which promotes itself as a peer-to-peer app that is extremely easy to use. You just install it on your phone, tablet, or computer, and it leverages the power of cryptographic keys to sign transactions to and from your account/wallet. You can do direct transactions with other users without those transactions going through any centralized servers.

That sounds pretty normal so far, but this particular application generates the crypto keys for your account from a key-server controlled by the software developer. It turns out the developer ALSO has a copy of everyone’s private keys that control their accounts, and can spend anyone’s funds whenever they want. Would you consider this a valid approach for a decentralized cryptocurrency?

Holochain is designed to give end-users control of their identity, their data, and their participation. It accomplishes this by peer-to-peer validation rules for data integrity across a shared and sharded data store which is orchestrated by cryptographic keys. Most non-technical end-users of such software have no realistic way of knowing whether they are the sole controller of their cryptographic keys.

**If the privacy of user keys is compromised, then so is the ownership of their data, as well as user’s control of their own copies of the software**.

Okay, But Why Use that Weird Performance Clause?
================================================

Legally, our license can only protect the code that WE wrote. Our software is being licensed by a DEVELOPER to run their app (the currency, chat, or social network they just built) on top of Holochain. We are trying to say: The only valid way to use our code is if that developer’s END-USERS are the sole authors and controllers of their own private crypto keys.

It is hard to shoehorn appropriate controls into the legal frameworks available to us today. We can’t apply copyright protections to keys that our licensee’s end users create because we didn’t write them. So our attorney suggested a creative work-around leveraging the public performance dimension of copyright. You don’t need permission from a musician to perform their work in private, but performing in public is another matter.

A corporation might want to implement a serverless P2P Slack chat where the company still controls the keys, seeds, or revocation keys so that they could read everyone’s chats and private messages, post as if they were some person, or revoke someone’s keys and access. I see why a company might want to do that for their internal employees; and as long as they keep it internal, we probably can’t stop them.

However, if they want to run their online community, on a PUBLIC network such as the Internet, Holochain enables them to eliminate all server and infrastructure costs by having each user provide a tiny portion of server power. Now we might be able to assert some protections on behalf of those end-users to make sure they at least control their own data on their own device.

Avoiding False Security and False Advertising
=============================================

**We want Holochain apps to be trusted as maximizing end-user autonomy and control.** As that starts to happen, we can’t let someone claim their software is a “Holochain” app if they are actually maintaining central control of end-user cryptographic keys. Otherwise, people will _think_ they’re in control of their accounts, money, personal information, or communications without realizing, at any moment, someone could strip them of their autonomy via revocation keys or a master seed.

Frankly, we don’t see any way to freely share Holochain with integrity, if we do not ensure these protections for the people who are not technical enough to make this determination for themselves.

You might think you are one of the people who can tell for yourself. You bought a Trezor or Ledger hardware wallet, and the key never leaves the device, right? Except of course if the device is ever left unsupervised and someone hacks it; or a “man in the middle” changed the seed before you received it; or maybe Trezor or Ledger actually keep all generated user seeds from a secret master seed, so they can easily compromise everyone’s private keys someday in the future.

The point is, it can be challenging even for technical experts. So if someone launches a fraudulent cryptocurrency that they’re marketing as running on Holochain and under the control of end-users, their rights to the license _should_ be nullified if they are defrauding their end users by maintaining central cryptographic control.

> **We are sharing Holochain freely as open source software to give people back control of their identity and data, not to fool them into thinking they’re in control when they’re not.**

What Does this Mean for Your App?
=================================

You want to build an app on Holochain, and want to know how this license affects you…

We’re NOT saying a dApp which uses the Holochain APIs must be released under an open source license. While we might encourage that, the copyleft nature of the Holochain license is not intended to force everyone who uses Holochain for their app, to to release as open source.

However, if you rewrite parts of Holochain itself, the source code for those elements needs to be shared. This is vital to ensuring the private key protections for end-users. We need to be able to see you’re not building things into Holochain to circumvent, leak, or harvest user’s keys.

New Frontiers of P2P Law and Software Licensing
===============================================

For distributed apps, cryptographic keys fall into a strange middle zone between code and user data. Code is **_functional_** and provides the processes for routing and transforming user data as inputs or outputs in a computing system. User data is typically more like passive content, which may be processed, and stored by the code.

Cryptographic Keys are both **_user data AND functional_**_._ In Holochain they orchestrate proof of authorship of data, where data is stored, who controls data, who validates the data, security and encryption of communications and storage, operation of chain structures for progressive hashing and signing which establishes its sequence and integrity, etc. But end-users must be the AUTHOR of their own private keys, because compromising their sole AUTHORship literally compromises their AUTHORity and AUTHORizations within the system.

So far, software licenses apply to centralized implementations of programs as either standalone or client-server systems. A P2P dApp on Holochain is an integrated whole, with processing and storage divided across all user’s machines.

Without integrity of keys this whole architecture unravels. If our license can’t provide protections which maximize end-user cryptographic autonomy, then we fall right back into centralized patterns of control.

**We are sharing Holochain freely as open source software to give people back control of their identity and data, not to fool them into thinking they’re in control when they’re not.**

If it means reclaiming the Internet from the Facebooks of the world, we think it’s worth a little stretching of software licensing into the performance protections already provided by copyright law.

Do you see a better way to accomplish this?

**Closing Notes:**
==================

As we worked with our attorney, [Van Lindberg](https://www.dykema.com/professionals-van-lindberg.html), to distill everything down to this core issue of _Cryptographic Autonomy_, the name of the license has evolved. This supersedes [my previous post about the Human Commons License](https://medium.com/holochain/licensing-needs-for-truly-p2p-software-a3e0fa42be6c)

We are still open for comments and revisions. You can [preview the actual text of the license here](https://github.com/holochain/cryptographic-autonomy-license).

Holo’s other posts with more details about the License ([First](https://medium.com/h-o-l-o/why-we-need-a-new-open-source-license-c8faf8a8dadd) & [Second](https://medium.com/h-o-l-o/some-legal-aspects-of-the-cryptographic-autonomy-license-cal-c95e18c90388)).
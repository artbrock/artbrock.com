---
layout: page
title: Unleashing the Power of Unenclosable Carriers (and How Holochain Can Help)
permalink: /2020/05/07/unleashing-the-power-of-unenclosable-carriers-and-how-holochain-can-help
image: 1_BESmuuqeyiNP4nmv8oBaJg.jpeg
categories:
- holochain
- crypto
- blockchain
- distributed systems
- unenclosability
---
[Originally published on [Medium](https://medium.com/holochain/unleashing-the-power-of-unenclosable-carriers-and-how-holochain-can-help-1a4d443aa844)]

_The Nextnet Series: Part 3 of 3_
-------------------------------

**_In collaboration with_** [**_Josh Zemel_**](https://medium.com/@joshmzemel)

![]({{ site.urlimg }}1_BESmuuqeyiNP4nmv8oBaJg.jpeg){:class="img-responsive"}

The first and second chapters in this series explored the nature of unenclosable carriers and their potential to underpin an unprecedented explosion of human creativity and social flourishing. We suggest starting with parts [1](https://medium.com/holochain/unenclosable-carriers-and-the-future-of-communication-4ac6045ac894), [2.1](https://medium.com/holochain/the-holocene-explosion-2-1-game-changing-possibilities-in-a-world-of-unenclosable-carriers-21ddbb15341a), [2.2](https://medium.com/holochain/the-holocene-explosion-2-2-game-changing-possibilities-in-a-world-of-unenclosable-carriers-a63efa3cd2a3), [2.3](https://medium.com/holochain/the-holocene-explosion-2-3-game-changing-possibilities-in-a-world-of-unenclosable-carriers-7c1a97f32e9c), and [2.4](https://medium.com/holochain/the-holocene-explosion-2-4-game-changing-possibilities-in-a-world-of-unenclosable-carriers-cd8d39a2014c) if you haven’t already.

This final installment delves into the unenclosable carrier Holochain specifically, including how it fulfills on the essential properties of unenclosability and how it can be used.

We’ll also look at how you can get started building new social organisms now — and start to leverage Holochain to solve problems associated with enclosability — no matter who you are or your particular skills.

And we’ll say a few words about unenclosability as it pertains to the ongoing COVID-19 pandemic response.

What Holochain Is
=================

**Holochain is an open-source, unenclosable _framework_ that enables hosting of _peer-to-peer applications_ without any centralized or consensus-based infrastructure. It provides a way of ensuring the _integrity and accuracy of data_ in a network while also enabling every user to host and represent their own data.**

Rather than each user’s actions being validated by centralized entities (as in internet apps) or global consensus mechanisms (as in blockchain apps) — both of which are enclosable and result in power imbalances within a network — user actions in Holochain apps are validated entirely peer-to-peer.

1.  By “_framework_”, we mean a database for storing, organizing, and finding data that is spread across many computers, so that no one has to hold a lot of data. In Holochain apps there is some data that remains local to one’s own computer, on what’s called a Source Chain, and some data that is shared across many computers, on what’s called a Distributed Hash Table (DHT).
2.  By “_peer-to-peer applications_” — also known as decentralized applications (dApps) or Holochain applications (hApps) — we mean interactive applications that are hosted entirely by the participants in the app, rather than by a central company. There are no limits to the kinds of apps that might be built on Holochain, other than that they have to involve two or more parties communicating or transacting. Apps for social networking, currency systems, ride-sharing, travel booking, buying and selling, team coordination, collective decision-making, chat, weather, and news applications are all possible. **Most ways that you currently interact digitally with people or businesses, as well as many ways you might imagine doing so, can be built on Holochain and can probably be enhanced by unenclosability.**
3.  By “_data integrity_”, we mean the assurance that data cannot be tampered with once it has been created, including by anyone storing data about themselves on their own Source Chain. For example, if you have 100 currency units and you spend 50, it has integrity for you to represent to the network that you have 50 units remaining; it would not have integrity for you to represent that you still have 100. Similarly, it would be inappropriate if you could display a 5-star user rating when you the average of your ratings is actually 3 stars. **Holochain provides a way of cryptographically ensuring that if you misrepresent your account balance or reputation score, it will be obvious in how you’re transmitting that data, and thus will be flagged and rejected by the peer-based validation mechanisms.**

Each Holochain app is a collaborative platform within which users host themselves and also provide just a little extra computing power and storage so that extra copies of data are always online and agreements are mutually validated and enforced.

![]({{ site.urlimg }}1_obCd6wnPxtiW0v1BroCkaA.jpeg){:class="img-responsive"}

What Makes Holochain Unenclosable
=================================

**Holochain is agent-centric.** Holochain enables individual choice over just about everything: which applications and networks to participate in, your identity and address within those networks, and what information you expose to other participants. And you always store and own your own data, taking it with you as you move between applications, which is not possible with internet search engines, social networks, or shopping sites — or even blockchain apps.

**Holochain enables direct interaction.** With Holochain, you act truly peer-to-peer, free from intermediaries except those you freely choose. You and your actions write directly to the record of events, the ledger, and you share only what you have agreed to share according to the terms of whichever apps you have freely chosen to participate in. You represent yourself, rather than being subject to representation by central authorities like legislators, miners, stakers, or even internet service providers.

Direct interaction also means that **Holochain functions on any transport protocol**. It can operate through the internet (TCP/IP) but doesn’t require it. Apps can just as easily operate on mesh networks or even local area networks, Bluetooth networks, near-field communications, or any other means of communicating data among peers. Each user can trust their own copy of the application, run asynchronously on local connections to only a few peers, and synchronize with the larger network later.

**Holochain enables groups of any size to operate on a shared set of agreements**, whether 2 people or 2 billion. Most blockchains have problems at the low end, requiring hundreds if not thousands of players before there is enough of a distributed consensus mechanism to prevent attacks by a majority of nodes. And so far, blockchain-based dApps (decentralized applications) haven’t demonstrated the ability to scale beyond a few thousand users, suggesting that they have problems at the high end too. For a carrier to be unenclosable, it’s important that any number of people can interact and mutually enforce the integrity of the space they’re participating in.

**Holochain is free to use.** Since all users host themselves on Holochain, there is no need for central hosting infrastructure as there is in web apps, nor any need for tax-like “gas” fees for miners or block producers as there is in blockchain apps. Each peer carries a bit of extra load to store and validate a portion of the information that’s distributed to the group. (This is not to be confused with Holo, which is an optional, peer-to-peer hosting framework that enables users who are _not_ hosting themselves to access Holochain apps through a web browser.) Any fees that occur in Holochain apps are designed, chosen, and mutually enforced by those freely participating within a given app space, with no revenues skimmed by the network.

![]({{ site.urlimg }}1_AR6R9a8EfNVuokmR7wqeAA.jpeg){:class="img-responsive"}

What You Can Do with It
=======================

Unenclosable carriers could have game-changing effects on our food supply, energy infrastructure, financial systems, and natural ecosystems, as we shared in previous articles. But you don’t have to take on such complex issues to apply unenclosability to everyday scenarios, improving their functioning while also helping to ignite the Holocene Explosion of new social organisms.

**In your company or other professional organization**, how about:

*   A self-hosted chat, similar to Slack, that works asynchronously and offline, doesn’t share your data with a corporate entity, and operates without infrastructure costs
*   A project-management or shared to-do system, like Trello — with the same benefits as above
*   A wiki-like knowledge base where the participants retain ownership of their content

**In your family**, how about:

*   A status- and location-sharing app (like a [Weasley clock](https://harrypotter.fandom.com/wiki/Weasley_Clock)), where your information is shared only with family and friends you choose, not exposed to a third-party software purveyor
*   A medical data repository, shared only with trusted family members so that they are able to provide critical information in cases of emergency

**In your local government**, how about:

*   A tamper-proof election system: an immutable, crypto-signed, voting system in which any voter is able to verify that their vote was included

**In your neighborhood**, how about:

*   A child-care or babysitter exchange in which unenclosable directories make it easy to find available care — and unenclosable reputation systems make it safer
*   A book-sharing system: a buildingless library that tracks the locations of books without central servers

**In your city**, how about:

*   A classified ads system, similar to Craigslist but reputation-enabled so that it actually builds community and connectedness (and improves the buying and selling experience)
*   A rideshare system, similar to Uber, that could offer drivers and passengers greater selection granularity, like based on shared values (e.g. LGBT-friendly drivers) — as well keeps location data private

**In your school or university** (or your kids’ school), how about:

*   An author-centric portfolio system in which each student hosts their own cryptographically signed work, countersigned and graded by faculty when appropriate
*   An immutable course and grade history, eliminating complicated mechanisms for obtaining transcripts

**In your academic field**, how about:

*   A system for peer-reviewing articles to replace expensive scholarly journals — and promote more thought diversity

**In your community of any size and purpose**, how about:

*   An agent-centric social network, intrinsically proofed against centralized surveillance and the selling of data to advertisers

**In your industry**, how about:

*   A neutral marketplace: a monopoly-resistant, level playing field for aggregating the pricing of goods and services. For example, airlines could participate in a search-and-booking system not able to be owned or acquired by any airline or retailer — unlike the centralized, antiquated, costly data aggregators of today
*   A simplified supply-chain system: Cross-organizational [REA accounting](https://en.wikipedia.org/wiki/Resources,_events,_agents_(accounting_model)) where digitally signed payments become the accounting entry for both parties in their ledger history. An immutable, easily-auditable, self-populating system that streamlines compliance with contracts and regulations

Many of these projects have the potential to serve significant market needs and turn a profit, while others might be more philanthropic. We’ll save a discussion of peer-to-peer revenue models for another article, but for now, suffice it to say that if you’re looking to create a business on Holochain, that is a viable option.

![]({{ site.urlimg }}1_IFaB6gQS6bYmzWqQw3fpNQ.jpeg){:class="img-responsive"}

Why All of This Matters (a Recap)
=================================

Today, a single person’s message can reach billions of people in seconds. This phenomenon, which would have been unfathomable to prehistoric humans, exists thanks to a progression of carrier technologies that have emerged over thousands of years, including written records, the printing press, sound amplification and recording, radio, television, film and, more recently, the internet, email, and social media. These developments have **unleashed tremendous human coordination, but, as a side effect, we have surrendered covert power to those who control the carriers, enabling them to decide what gets transmitted or not — and how we can interact with each other.**

Our mainstream monetary systems are examples of carrier enclosure, too, since they empower governments and financial institutions to say what counts as legitimate transacting, as well as to make fiscal policies that affect the behavior of our currencies. Blockchain technology commendably turns over the job of legitimizing transactions to a “decentralized” consensus network, but it still converges to the same side effect, simply replacing governments and corporations with people who control data centers and crypto-coins. **A system that is unenclosable is not just decentralized; it cannot ever be centralized.**

Over the centuries, the power and wealth differentials have become so extreme that instead of a level playing field we have a steep mountainside that people can barely hold onto. We explored some of these imbalances and their consequences in Parts [2.1](https://medium.com/holochain/the-holocene-explosion-2-1-game-changing-possibilities-in-a-world-of-unenclosable-carriers-21ddbb15341a), [2.2](https://medium.com/holochain/the-holocene-explosion-2-2-game-changing-possibilities-in-a-world-of-unenclosable-carriers-a63efa3cd2a3), [2.3](https://medium.com/holochain/the-holocene-explosion-2-3-game-changing-possibilities-in-a-world-of-unenclosable-carriers-7c1a97f32e9c), and [2.4](https://medium.com/holochain/the-holocene-explosion-2-4-game-changing-possibilities-in-a-world-of-unenclosable-carriers-cd8d39a2014c). When disproportionately powerful people (understandably) act in their own interest, it often comes at the expense of the greater good. This is why many of humanity’s greatest challenges — rainforest destruction, pollution and climate instability, food supply degradation, the looming energy crisis — **won’t be solved at the levels of policy or diplomacy, but only by shifting the underlying architectures that determine how wealth and power are allocated and how people are incentivized to act**.

The good news is that such a shift is technologically possible in ways it hasn’t been before. Suddenly, at the outset of the 2020s and for the first time in history, **we are now able to build communication and transaction systems that let us have it both ways: capacity for massive scale _and_ freedom from the power distortions of enclosability**. What is available, and what we must undertake, is a proliferation of new forms of social organizing so expansive that it deserves to be named analogously to the Cambrian Explosion of new biological organisms. We call it the Holocene Explosion, after the current geological epoch.

Designed as a carrier for this Explosion, **Holochain preserves individual sovereignty by giving all agents the power to represent themselves in all interactions, and to voluntarily enter (or not) into spaces where mutually agreed-upon rules are mutually enforced.** If someone comes to have broader influence than someone else, it’s not because of carrier control, but because that person has gained capabilities according to rules voluntarily opted-into by the people participating in that app space. If anyone doesn’t like the rules of a given space, they are free to leave and join or start another, and since they own their data, they can take it with them.

![]({{ site.urlimg }}1_1fX50rkOEUrmloGB7ua40Q.jpeg){:class="img-responsive"}

A Special Note on COVID-19
==========================

The global COVID-19 pandemic, which took hold after we drafted most of this article series, has provided a new and powerful lens into the shortcomings of systems bound by carrier enclosure. Politics, bureaucracy, and questionable motives have hampered government responses all over the world, and opportunistic power grabs by authoritarians have led to further consolidations of power. Rollouts of COVID testing have been subject to political pressures, profiteering, and scams. Global markets are exhibiting their own tangle of enclosure points, with the brinksmanship playing out in the oil cartel leading the way.

An exploration of all the ways that unenclosable carriers could help us respond better to crises like this one probably deserves its own article. We can imagine many COVID-related peer-to-peer applications, including:

*   [Contact tracing](https://en.wikipedia.org/wiki/Contact_tracing) without exposure of personal location data to central authorities
*   Secure aggregation of testing data with membranes to define which data is kept private, shared among reputed researchers, or made public
*   Supply-chain transparency to ensure veracity and quality of critical supplies like personal protective equipment, ICU equipment, and tests to prevent scams \[[1](https://www.nytimes.com/2020/04/27/us/california-coronavirus-ppe-face-mask-scam.html)\]\[[2](https://www.fbi.gov/news/pressrel/press-releases/fbi-warns-health-care-professionals-of-increased-potential-for-fraudulent-sales-of-covid-19-related-medical-equipment)\]\[[3](https://abcnews.go.com/US/man-arrested-attempting-scam-government-paying-millions-covid/story?id=70100763)\]

Then there’s the matter of remote work and digital collaboration, which has been vital for decades but has recently taken on a new level of importance. Meanwhile, government oversight in some places is reaching [what seem to be all-time highs](https://www.nytimes.com/2020/03/01/business/china-coronavirus-surveillance.html) in the name of combating the virus. Isn’t it critical that our remote collaboration systems be immune to acts of social control and cyberwarfare? In a communication system built on unenclosable carriers, there is no opportunity for centralized actors to conduct unwarranted surveillance, impose censorship, or disable infrastructure.

![]({{ site.urlimg }}1_3ZWePaMi4lNPOFTT-wsH6A.jpeg){:class="img-responsive"}

Now what?
=========

At this moment, the most important factor in igniting the Holocene Explosion is momentum. By building or participating in unenclosable projects, you’re feeding more than one bird: **not only are you bringing to life useful technologies that improve upon the apps’ centralized counterparts, you’re taking a stand for a world absent of the corruptibility of centralized control.**

If you’re inspired by what’s possible in a world of unenclosable carriers, the question now is: what lights you up as a way to be involved? Everything from small to large makes a difference.

Can you develop apps or design UIs? It’s surprisingly easy to build apps with Holochain, and it’s getting even easier with the release of the rapid application development (RAD) tools. Maybe you can help make it easier, still.

Can you spread inspiration through storytelling, messaging, writing, speaking, podcasting, social media, or even just conversations with friends? Why does unenclosability matter? What does it make possible? We need people who can teach and share the concepts that will activate others.

Can you produce elegant visual communications — websites, infographics, memes, and other formats that help with storytelling and sense-making? The world needs artists like you to communicate more efficiently and memorably than words sometimes can.

Are you in a position to design systems of finance or governance that incentivize acting in accordance with the common good — or would like to learn to do so? As much as anything, this movement needs people willing to study unenclosable systems and experiment with their design.

Or is your mode of study is more empirical, watching to see how it goes, ready to analyze differences between unenclosable systems and conventional ones, and to quantify and publish those differences? We need people like you to validate the movement for the later adopters.

Do you organize people, creating and moderating the spaces, physical or virtual, for people to gather and create? This movement needs people to organize and coordinate events, whether hackathons, dinners, or virtual chats.

Can you support projects with financial advice and expertise? Many projects will cost real money to get going — and have the possibility of earning real returns — and the movement needs people to help see it to it that projects get beyond the startup phase and have the opportunity to scale.

Here are three steps you can take right now.
============================================

1.  Visit [this thread on the Holochain forum](https://forum.holochain.org/t/share-responses-to-the-nextnet-articles-here/2996) and post a response to this series, including any action that you are inspired to take, or anything that you could imagine creating. (You’ll need to create a login.) You can also visit the [forum’s main page](https://forum.holochain.org/) to explore the many ways that others are thinking about applying Holochain.
2.  Explore [some of the existing projects](https://forum.holochain.org/c/projects/7) being created on Holochain. Create logins to explore their tools and/or communities; just doing that alone sends a powerful message of support to these pioneering, potentially game-changing efforts. And, to the extent you’re inspired to, give them feedback and get involved!
3.  Try out [Holoscape](https://github.com/holochain/holoscape/releases) to explore some Holochain-based apps you can already run locally. And if you want to play with new tools for building your own Holochain apps or mashing up functionality from multiple apps into your own creation, try [Chimera](https://github.com/holochain/CRISPR/wiki). (Both of these tools are experimental, so expect frequent changes and updates).

Thank you.
==========

We appreciate your coming with us on this journey over the course of this series on unenclosable carriers. We look forward to seeing you around the unenclosable neighborhood!
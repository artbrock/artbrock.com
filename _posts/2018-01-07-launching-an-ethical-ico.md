---
layout: page
title: Launching an Ethical ICO
permalink: 2018/01/07/launching-an-ethical-ico
image: 1_LsK22SKyngP0vB7X99b9zw.jpeg
categories:
- holochain
- crypto
- blockchain
- ico
- initial community offering
---
[Originally published on [Medium](https://medium.com/h-o-l-o/launching-an-ethical-ico-e21ed5738bb0)]

![]({{ site.urlimg }}1_LsK22SKyngP0vB7X99b9zw.jpeg){:class="img-responsive"}
_Banner from Holo [crowdfunding campaign](https://igg.me/at/h-o-l-o/x/308280)_

Following up on my [prior posts about responsible cryptocurrencies](https://medium.com/h-o-l-o/building-responsible-cryptocurrencies-d45d7d2173ed) and [moving towards a more Ethical ICO](https://medium.com/h-o-l-o/toward-an-ethical-ico-419b9e961004), I want to dig into some of the nitty-gritty about what kinds of things can make an ICO more ethical than the norm. At the very least, I’d like to open up some dialogue about how to make this space safer, even if you disagree with strategies I suggest or have better ones.

I know some of this may seem idealistic or unreasonable, but if we’re going to raise the bar for integrity on ICOs, we may as well set our sights high.

**_Caveat Emptor:_** _When I started writing this post a couple months ago, my lofty ideals had not been dragged through the shark-pit that the ICO space has so quickly become. I have been humbled by the process of seeing just how hard it can be to stay true to high ideals for maintaining integrity._

NINE WAYS TO RAISE ICO INTEGRITY
================================

I’m going to skip over some pretty basic things, like making your project open-source, sharing your smart contract code publicly, getting it security audited, and such. And I also want to specifically note, we are not doing an Initial **Coin** Offering, but an an Initial **Community** Offering, because **Holo fuel is crypto-accounting-based not crypto-coin-based**.

1\. Measure Actual Demand for Your PRODUCT to Scale Your ICO Supply
===================================================================

It’s tempting to believe all those buyers of your coin are banging down the doors to get your product. Some surely are. However, **the fact that people will buy a poker chip to play with should not be confused with having found the early adopters for your product**. In fact, if these two things are distinct, how do you know there’s actually demand for your product at all?

I’d suggest it is possible to find ways to have your early adopters pre-commit to your product, not just purchase gambling chips. Doing this seems more reasonable for measuring demand than a token they may ditch before you ever get to launch.

In our case, we want to know who will run P2P apps that can be built on Holochain. So, [**we launched a crowdfunding campaign**](https://igg.me/at/h-o-l-o/x/308280) **to sell Holo hosting boxes**, and tickets to dev trainings or hackathons where people build Holochain apps. In each case, a purchase shows us someone who will either host and run apps, or build them. Our token supply is then scaled to support a host/dev ecosystem of that size (times a growth multiplier) over the first year.

It was quite surprising to see how much demand there is for what we’re building. We became Indiegogo’s #1 trending project in about 6 hours. We raised $90K or 40% of our goal in the first 24 hours. Unfortunately Indiegogo’s legal team then delisted us because they were uncomfortable about our project being connected to cryptocurrencies. Even while hidden from being displayed on their home page and category displays, we still met our $200K minimum goal in just 78 hours. I’m excited to see what happens when our ICO launches and people realize that **buying from our Indiegogo campaign is what unlocks more token supply** each day!

A crowdfunding campaign may not be the best way to demonstrate demand for your project, but I’d suggest you find your own way. How might you find sponsors or customers willing to put up front money for use of your product? If you don’t try, **how do you expect to separate mere gamblers from your actual early adopters?** How will you test if you actually have a market for your product or identify how to communicate with them?

2\. Seek the Crowd, Not Just the Funds
======================================

My [last post](https://medium.com/h-o-l-o/toward-an-ethical-ico-419b9e961004) covered why this is an important orientation to be rooted in if you want to reach your crowd of actual users and early adopters, not just crypto speculators. **If your sale doesn’t last long enough for regular people to get in, then you are not getting your real stakeholders on board**, for example, when your offering sells out in 30 seconds.

What if you were to code an escrow account that gathers all the purchase bids, maybe **caps them so no one could buy more than 10% or so**, and then transfers coins to accounts pro-rated by what portion of the actual bids they placed. This would at least allow everyone to get something, rather than sell out in one block to the people paying the highest gas prices.

In fairness, this isn’t easy to do. When we tried to implement that approach in Ethereum, it did not prove feasible to do on chain. We had to split the work across multiple blocks because of gas limits, and it gets expensive really fast. We considered taking the calculations off-chain from Ethereum to Holochain, but decided it may be too early in the review of our own security model to expose all the funds for our ICO as such an early real-world test case.

Given how easy this kind of computation is to do on Holochain, **it was quite a wake up call about how little practical computation smart contracts can actually do**, and how immature most of the state-channel/off-chain integration systems were. So we all get to watch as some people trading [pictures of kitties brings the world’s global computer to its knees](https://www.bloomberg.com/news/articles/2017-12-04/cryptokitties-quickly-becomes-most-widely-used-ethereum-app).

In the end, we opted for a simplified approach of **reserving part of the token supply that your Indiegogo purchase unlocks for a brief time**. This way big crypto whales paying higher gas fees or leveraging automated processes can’t just swoop in and take all the tokens in our sale. Regular people — hopefully our real early users — get a reasonable amount of time to set up a crypto wallet and decide if they want to buy the token supply they unlocked.

3\. Be Radically Honest
=======================

For me, there’s something wrong about the incongruence of seeing people scramble for “easy ICO money” while setting up themselves up as a non-profit, charitable foundation. I’m sure some groups truly do have noble motives to foster good things and a good community with their project, but much of this approach just seems like legal shenanigans.

Everyone is guessing about the legal status of most things happening in this space. **Nobody knows for sure how cryptocurrencies or fundraising by crypto will end up getting treated legally.** There are very few places with actual regulatory frameworks designed to enable ICOs and regulate decentralized currencies.

Therefore much of what is happening is rhetorical positioning, and may get determined retroactively. Equity. Commodity. Utility. Security. Regardless of what you call it, it may end up getting based on how, when, and whether you delivered what you promised. It can be tricky to cut through the red tape from lawyers to try to just “tell it like it is.”

In order to use accept cryptocurrency in an ICO and have bank accounts where we can deposit the money, we have to gather KYC (Know Your Customer) information for Anti-Money Laundering laws. Unsurprisingly, banking turns out to be one of the more challenging things to do if you’re a crypto company (Monopolies like to protect their turf.).

**Even if it means scaring people away from our offering, I feel the best thing to do is be as truthful and straightforward as possible.** It’s best if they walk away now rather than get angry later because they didn’t want what we’re actually providing. We try to make it clear what we’re actually doing, even if it doesn’t match the typical crypto-anarchist political ideals.

For example, Holo fuel has transaction fees to sustain the infrastructure and app ecosystem. People immediately assume centralization — that transactions come through us, or that we’re party to every transaction. We’re not. In fact, we don’t even receive copies of every transaction. They’re distributed around the DHT so a bunch of people have them, but without a global ledger, we’re not holding them all.

![]({{ site.urlimg }}1_9y_xqCZLlhEi8U0ZaTvZ9g.png){:class="img-responsive"}
_Up to 1% fee on each transaction_

Even though we know many cryptocurrency people are likely to have a negative reaction to these fees, it is actually the responsible thing to do in our design. So we’ll just have to bite the bullet and re-explain (in forums, chats, emails, etc.) how **our currency is actually less-centralized than most cryptocurrencies, even with transaction fees**.

4\. Deliver Substance Beforehand — Show Don’t Just Tell
=======================================================

Cryptography and decentralized computing is some pretty dense stuff. Many people seriously involved in the space don’t have a solid technical understanding of what’s going on under the hood in crypto projects. Certainly, most people thinking about participating in an ICO are in no position to differentiate between the real deal and smoke and mirrors.

So, even if your tech plan is solid, having a team that can work together and produce results is a whole other thing. Bringing complex tech from design, to build, to usability, and then into widescale adoption is something far more tech startups are failing at than succeeding. Before asking people to fund you, can you deliver something — a proof-of-concept, prototype, or alpha release? It doesn’t have to be bulletproof yet, but it can **demonstrate you have a team that can at least get something across the finish line**.

![]({{ site.urlimg }}1_F5DxZg_Ss1S2N0-OPNVWCw.png){:class="img-responsive"}
_Holo team members_

Remember, if you don’t limit your ICO to accredited investors who can afford the risk, then you’re asking regular folks for their cash. It’s only fair that you and your team put some skin in the game too. A white paper plus some marketing materials and angel funds for expensive ICO lawyers is not what I’m talking about. **Have your team do some work for which their payout is in the same currency created in the ICO.**

We held our first hackathon for people to build things on Holochain in March 2017. Six months later we finally felt ready to call something an [Alpha release](https://github.com/metacurrency/holochain/releases), and we expect to have [many dApps](https://github.com/holochain) and a handful of currency systems built on Holochain before our Holo fuel for hosting next-gen crypto apps goes live. **We put years of design and a solid year of software development into our platform before asking people to purchase our hosting credits**.

5\. Don’t Take it All Up Front
==============================

Some ICOs almost accidentally raised hundreds of millions (like Bancor or Tezos), others (like Filecoin or EOS) targeted raising half a billion or more. They have argued these figures are justified because they have to raise everything up front. But actually, that’s just a design decision they made. And if you raise that much money, you’re going to have to devote a significant portion of your attention to protecting and managing those assets.

**If you can’t structure your crypto infrastructure with incentives that pay for maintenance of the infrastructure, maybe you haven’t found a sustainable design yet.** How can you include a revenue model for the infrastructure so everything does not need to be taken up front, without compromising the values of decentralization people seek in crypto systems?

Holo is sustained by nano-transaction fees on the micro-transactions used for hosting services. We do this without centralizing transactions, records, or enforcement. In fact, we don’t even have copies of all transactions (although the network as whole does). The pattern of **mutual enforcement ensures that when a large enough transaction fee has accrued in someone’s account, nobody will do the next transaction with them until they pay it.**

As someone who has been designing a wide variety of types and structures of currencies over the last decades, I see many viable approaches for building in a revenue model to sustain the infrastructure. What if software updates carried similar rewards as mining blocks? **Shouldn’t a currency reward the people maintaining the software and security as well as those running the hardware?**

6\. Establish a Reasonable Cap
==============================

Once you’ve designed system updates and maintenance into the operating revenue of a currency, then wouldn’t it make sense to limit how much you raise up front? Why create unnecessary risks in managing funds, failing to deliver, getting beat to market, or having a security flaw in your early designs which leads to complete loss?

**Doesn’t it make more sense not to get greedy** and to cap the ICO at a reasonable amount to launch your system plus a little extra runway for unforeseen obstacles? We expect to have our systems operating within 6 months, so we’re capitalizing our first year, just to be safe. Extra capital can be used as reserves to liquidity and backing for the currency.

Once you’ve included a way to generate sustaining revenue, and you don’t have to raise all future capital in one Token Pre-sale, then you can set a responsible cap on your ICO. Having hundreds of millions in cryptocurrency may seem like a dream come true, but it can make you a target, or disrupt your team and become as much a problem as a solution (look at Tezos).

Even though we are arguably providing a solution which encompasses everything EOS (now in the billions) and many other huge ICO campaigns have promised, we are capping our sale around €25 million. This helps us **stay focused on delivering the goods instead of gambling on crypto markets with other people’s money**.

7\. Minimize Risk of Being Considered a Security (for Everyone’s Sake)
======================================================================

Many people know about the Securities and Exchange Commission and the fairly tight regulation of investments in the U.S., but most countries have laws to protect people from being defrauded by people selling bad investments. The criteria for defining a security are complex, but one significant dimension is about risk. **The more you can protect your ICO participants from risk, the better off everyone is**.

_Disclaimer: I am not a lawyer. Do not consider this to be legal advice._

Typically selling **_equity_** in a venture puts it directly into the class of being a security and a shared risk. Many groups are focusing on selling **_utility_** tokens with a clear usefulness, or **_commodity_** tokens with some kind of clear value. There’s a framework some law firms have developed as general guidelines for navigating these categories.

In our ICO, we pre-sell hosting credits. Participation is simply a pre-purchase of hosting services for P2P apps — an item with actual utility in a $200 billion dollar hosting market. Our cryptocurrency functions like when you buy $20 of credits at a stock photo web site and spend a few dollars on rights on different photos, and the site uses this to determine which photographers get paid.

Holo sells hosting service, which gets provided by various hosts, who get paid in internal currency for their computing power. So, in order to lower risk, rather than just creating speculative coins**, we are using a business model with an established precedent in a rapidly growing industry, and leveraging traditional accounting methods augmented with cryptographic immutability**.

If you run a HoloPort hosting box, build an app, or install Holo software on your own server, you are a direct participant in generating value in that ecosystem. Because these participants provide direct value, rather than primarily relying on investment in value produced by others, our hosting credits might not be deemed a security.

Another significant way to reduce risk is to shorten the timeline between ICO and the launch and use of the goods/services you’re offering. Additionally, you can define clear and direct benefits, services, products, or rights that people are purchasing (rather than speculative collective upside of future value). Also, you can limit your sales to “qualified” investors (people rich enough to take such risks). Or if you’d like to keep your ICO accessible to normal folks, you can limit purchases to small, low-risk amounts. **Combining all of these approaches significantly lowers everyone’s risks.**

Are there creative approaches you can take to reach and serve a broad enough audience that your real fans and early adopters can participate? How might those approaches let you access people in the U.S. and other places with restrictions on securities?

8\. Better Currency Design and System Dynamics
==============================================

I’ve [written about this elsewhere](https://medium.com/h-o-l-o/building-responsible-cryptocurrencies-d45d7d2173ed), but I don’t think enough people are questioning fundamental currency design and dynamics nearly enough. Cryptocurrencies don’t just have to be speculative tokens detached from any real-world value. They don’t have to be coins magically created from nothing.

No matter how cool your idea is, the lid on the success of your future crypto platform comes down to how well you designed the currency that powers it. If it doesn’t move value to the parts of the network which sustain it, it will die. If it doesn’t create the right flow dynamics, it will become imbalanced. Great tech that is only accessible to the ultra-rich, or the ultra-techie because of what it takes to buy into the currency that runs it, is not actually great tech at all.

What’s worse, although blockchain claims to be a decentralized platform, most blockchain systems use either Proof-of-Work or Proof-of-Stake as their consensus algorithm with incentive rewards to nodes providing those proofs. **Both of those algorithms are actually approaches to centralizing power and control. In both cases, the rich get richer.** It’s no accident that Bitcoin, not even 10 years old, is already more centrally held, issued, and controlled than the national currencies it sought to replace.

The problem here is most everybody assumes there’s basically just one way to run a cryptocurrency, and people have no idea the [hundreds of choices](http://artbrock.com/currencymap) available which fundamentally change the patterns of value and wealth in your currency ecosystem.

Holo fuel is not coin- or token-based, instead it is run on massively scalable, double-entry crypto-accounting. Holo fuel is never created from nothing, every credit is accompanied by a balancing debit. This has two interesting side effects:

1) There is always a stable net supply of ZERO credits in the system.

2) Holo starts out in debt for the amount people bought from the ICO and **we will literally have to produce 100 times the value we received in economic activity to repay that debt.**

Holo fuel is backed by the computing power of the people offering hosting of P2P crypto apps. We will set the price at ICO launch to a benchmarked set of distributed computing tasks at a fraction of the cost (probably 1/10,000) to run on Ethereum. For the hosts providing computing, Holo fuel is also partially backed by outside currencies that were used to purchase credits, so hosts can redeem the credits they’ve earned to pay their bills.

Since the supply of the currency is bound to provide computing power and grows with the capacity of the network to provide it, the value of this computing power for hosting services provides a stable center of value for the currency. **There is virtually infinite demand for computing power, so, with or without exchanges, both fairly stable demand and convenient liquidity for meeting that demand already built into Holo fuel.** You can’t prevent speculation, but you can design your currency so that the tail doesn’t wag the dog.

Holo fuel is designed to have a rapid rise in value and spending power and then largely stabilize in value to support and encourage active spending and use instead of hoarding. We’ll see how successfully our design pans out — but it will not be just normal crypto speculation tokens.

I’d like to challenge everyone in the crypto space to move beyond just crypto-tokens **_created from nothing_** (which is what “fiat” issuance actually means). Instead, imagine new ways your currency can be issued, held, linked to other value and reputation, and tied to reliable real-world value to strengthen and stabilize its value.

9\. Accountability
==================

Did you know there are ICOs spinning up with no team members visible, fake team members, or stolen identities? For starters, have a visible team of real humans connected to real world accomplishments and failures, that responds on social media which is also connected to other real world humans. **Let’s start with knowing who we’re holding to account.**

Provide a clear design of what you’re delivering, a road map to get there, and approximate timelines. Everyone understands timelines and strategies can shift. Be public about that when it happens too.

Be responsible for how much money you accept. Have a way to make value you’ve produced visible. **This is more than than the value of your token, but the functioning of a mature crypto project.** As mentioned above, the Holo organization’s negative balance makes it quite clear how much was taken in and where we stand in the process of returning 100 times that original value to the community.

Navigating the strange and complex variety of logical contradictions emerging in the ICO space can feel challenging. One way people try to hold a project to account is to issue a bunch of tokens to team members that vest slowly so that they have to stay in the game to create long-term value. ICO rating forms seem to imply if team members don’t have to wait a couple years to vest, then you are just some kind of dump scam. When speculative tokens are the only way of creating a currency, this makes some sense.

Isn’t the point of an ICO to self-capitalize a crypto project? Why wouldn’t you want a project to use the tokens as their own capital to replace the cash costs of paying their team. Does it actually make sense to sell more tokens, putting other people’s money at risk, to just keep value locked in the team’s accounts? Of course, when value comes from artificial scarcity, you want to keep the team from dumping their tokens and crashing the currency. How about a slow release plan? Let them draw salary type equivalents for period of time.

What ways are you taking accountability for ensuring the value of your offering, and for how much your community has funded you?

Conclusions
===========

The ICO space may seem fresh, new, and exciting, but it is also full of scams (whether by intent or by accident). If we want to keep this space alive and maintain the possibility for projects to gain access to creative capital, we need to raise the bar.

There are many sites out there doing ICO listings, reviews, and ratings. It seems some may just be leeches attached to an ecosystem with crypto-cash flow. It’s really hard to tell what kind of due diligence is really getting done, or how well equipped they are to even do it.

When we filled out the listing forms, there was simply no room to communicate anything innovative — no place to explain how our currency or supply actually worked. ICOs have been around for like 10 minutes and they’re already cookie-cutter, fill-in-the-blank projects. I want room to invent and discover the better ways of doing this than the few patterns that have emerged so far!

As we’ve spoken with experts and potential “advisors” in the space, some didn’t like our process. They thought the “small” numbers in the crowdfunding campaign made it hard for the big players to take us seriously. They wanted to push us straight to taking from VCs, when we took this path to connect us directly to our user community and limit the influence of VCs.

In any case, don’t think that doing an Ethical ICO means easy money. It takes a strong moral compass to steer clear of the patterns already emerging in the ICO space, but that may be what it takes to not compromise your integrity, accountability, or relationship with your community. I mean, lawyers are practically in the business of making sure you’re not accountable, and protecting you from the risks of being held to account.

At this stage, I can’t know for sure we’ve avoided all the missteps. In fact, there have been a few times we’ve had to backtrack and do things over again in new ways. But I’d like to think we will at least stand out from the crowd a bit for having tried so hard to get this right. I hope people will still be figuring out all the things we’ve done differently for many months to come.

What do you think of our choices? Do you see any major missteps?

What ideas do you have about how ICOs should work that would make things cleaner, clearer, and safer for all?
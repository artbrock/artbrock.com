---
layout: page
title: Building Responsible Cryptocurrencies
permalink: 2017/10/12/building-responsible-cryptocurrencies
image: 1_HUJZouVvXOkGZyt-2SYt0g.jpeg
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/h-o-l-o/building-responsible-cryptocurrencies-d45d7d2173ed)]

![]({{ site.urlimg }}1_HUJZouVvXOkGZyt-2SYt0g.jpeg)

Making Crypto Safe for the Mainstream
-------------------------------------

I’ve been thinking a lot about how to make ICOs really solid, ethical, lasting sources of good. However, at the heart of an ICO is the “C” — the cryptocurrency which is being offered. How can we really get to ethical ICOs when cryptocurrencies themselves aren’t ready to serve mainstream needs? _\[This is the first of three articles about getting to ethical ICOs.\]_

’Cause let’s tell the truth — cryptocurrencies just aren’t safe for everyday use by normal people and businesses yet.

I’m not talking about double spends, or 51% attacks. I’m not talking about inaccessible UI, and impenetrable language. I’m not even talking about poor key management or device security. While those are substantial issues, more fundamentally, most people simply can’t take huge risks with the value of money. The crypto-roller-coaster is certainly fun for some people, but it is not a ride for those who can’t afford to lose what they invest.

Crypto trading markets are not currently meant to be very accessible. The risks seem vast and incomprehensible. Most cannot analyze code (think of DAOhub, for example) or tell from a whitepaper who’s blowing smoke and who can deliver the goods. There’s too much news to track and too much insider information to be connected to.

Crypto whales can jump into smaller coin pools and play pump & dump games to manipulate prices. If you aren’t one of those folks shaping the market, then you are probably one of the suckers hoping to get lucky instead of screwed. And so far all we really have are trading markets. There’s no substantial economy using cryptocurrencies yet. All this nonsense market cap stuff is just people trading one kind of poker chip for another.

I know that paints a pretty dark picture. Many will want to point to the long-term upward trend of the few giants like Bitcoin or Ether, even in the face of economists who think those bubbles are bound to burst. I wonder what happens to them when the next generation tech comes out that transcends proof-of-work, proof-of-stake, consensus, and blockchain itself? How long will those bloated energy hogs — already centralized under the control of very few mining pools — stand against truly resilient, low-power, fully distributed alternatives?

It Doesn’t Have to Be This Way.
-------------------------------

It is not fundamental laws of physics or laws of computation which has us repeating the toxic patterns in the crypto-space that have corrupted global financial markets — concentrating wealth and power to the few, and manipulating volatile boom/bust cycles. We are simply repeating the problems of the past because of our failure to see real alternatives.

The designers of blockchain may have understood cryptography, but it looks like they didn’t learn the basics of currency design or weren’t willing to challenge the dysfunctional patterns of our financial system.

Cryptocurrencies do not have to be gambling tokens created from nothing. They can be responsibly connected to assets, promises, or real-world value. They don’t have to re-create all the speculative money problems that they were supposed to be solving.

In fact, the whole crypto community understands currency design so poorly that they have practically redefined the word “fiat” (from Latin, meaning spoken into being from nothing) to mean national currencies. This fails to notice that every cryptocoin so far is also spoken into being from nothing. (Hint: [Here’s how you can tell](https://medium.com/holochain/re-bitcoin-as-fiat-coins-just-spoken-into-being-3acf017a1f89), ask yourself, “Who gets debited when someone is credited with newly mined coins?” If the answer is “Nobody,” then you know it is fiat.)

Optimizing for Medium of Exchange
---------------------------------

National currencies enjoy monopolies propped up by mandatory tax in the currency and legal tender laws. Essentially, this makes life almost impossible without using a national currency. This compulsory monopoly should be easily crushed by cryptocurrencies if we had good ones — fast, cheap, interchangeable, decentralized. But we’re still stuck in the monopolistic mindset of money.

We’ve collapsed a bunch of different functions into money that actually can and should be reconfigured in many ways: medium of exchange, store of value, unit of account, and token of status.

**Monopoly Busting Rule: Don’t try to be everything to everyone.** Currency design should be optimized to be a medium of exchange or a store of value, but not both. These two traditional functions don’t actually play too well together. If you optimize a currency to be a good store of value, then people don’t want to spend it. They sit on it, and no activity in the mainstream economy takes place in that currency. One of the ways to optimize for circulation, is various forms of “demurrage” (almost a kind of hoarding tax) which create a kind of hot-potato effect to keep the money moving. It has to be easy to spend, using familiar tools, with minimal overhead.

What if we gauged the success of a cryptocurrency on its level of integration into the daily productive economy of how work gets done? If the only measure of a cryptocurrency’s success is its market price or market cap, then we won’t have cryptocurrencies that people will want to use for everyday spending. And if they stay so volatile, then many people simply can’t rely on them for everyday survival. When we have cryptocurrencies with stable values over time, we’ll see many more businesses being willing to accept them, and more people willing to participate and spend them.

However, the **design principles for a value stable currency** are rather different than the ones employed in current cryptocoins. Some of the characteristics you need when optimizing for value stability are:

*   **Dynamic supply** — that can expand and contract based on real market behavior and demand
*   **Sufficient supply** — not too scarce, not too plenty, but just right
*   **Strong internal value** — a strong spending sink with clarity about the currency’s value in obtaining it

Given today’s cryptocoins, this may seem like a pipe dream. But it’s not really as hard as it may seem. Imagine a currency backed by an asset which can pretty easily be delivered by a loose network of providers who accept the currency in payment for: electricity from solar panels, computing power from idle computers, rides from passing drivers, stays in empty bedrooms, etc. A currency tuned to kilowatts or computing power would have a strong enough internal value to serve as center of gravity and common economic need.

For a sufficient supply which can expand and contract, I only know of one form of currency issuance that fits the bill: _Mutual Credit_. One of the strange things about mutual credit is that the **net supply is always ZERO**. It uses double-entry accounting type transfers which always have an offsetting debit for every credit. Positive and negative account balances always balance each other.

The **active supply** in mutual credit is controlled by managing credit limits. If you use an algorithm to tie people’s credit limit to their recent earning history in the currency (with some tweaks to prevent gaming), then their credit expands when there’s demonstrated demand for the value they sell, and it contracts when there’s not. We get at least some kind of breathing — expanding/contracting effect — that we were looking for.

Finally, you’d need to build an interface that connects this [Open Value Network](http://wiki.p2pfoundation.net/Open_Value_Network) (electricity, computing, open source hardware, etc.) to outside demand. People could buy the crypto-credits, denominated in kilowatts or kilobytes, with outside currencies which the providers would be able to use to cash out for the services they provide that back the value of the whole system. Special reserve accounts would need to be created for this cashing in or out, operating as a very limited type of exchange focused on the asset providing the center of gravity for value.

To implement this we’d have to abandon the cryptocoin token-centric approach for a crypto-accounting, user-centric approach. Luckily there’s a blockchain alternative called [Holochain](https://holochain.org) that makes this kind of thing pretty straightforward to build.

Whew! If you’re not used to detailed currency design discussions, that may have sounded like a lot of unfamiliar words. Hopefully it’s enough to paint a picture of a viable alternative approach to cryptocurrency.

Optimizing a Store of Value
---------------------------

People with excess cash should be able to easily convert from medium of exchange currencies to other cryptocurrencies, optimized to be stores of value. It is only fair to share this as a counterpoint to the medium of exchange currency design above, however, as often happens, this blog post is getting too long and I will need to make it a separate post to give it the space it deserves. Suffice it to say that it is designed to move slower and to be correlated to real world value which grows not because of speculation or perception, but because of actual growth of the asset itself.

As a simple example, imagine a tree-banking currency designed to invest in sustainable growth of tropical hardwoods — as long as there are humans building things, it is likely that hardwoods like teak will be valuable. Imagine converting to tree-banking credits which employ people to steward rainforest and replant zones and sustainably harvest hardwoods. There are many other kinds of examples where invested inputs grow in physical real-world value just by staying invested — these make optimal configurations for store of value currencies.

I have a Dream!
---------------

Imagine a world where cryptocurrencies have risen to new levels of common usage and integrity. Where global and local economies are rooted in peered value networks with peered governance, far outside the spheres of mainstream politics and easy access to mutual capitalization. Imagine easily transferring resources where they’re needed without being gouged by foreign transaction fees, ATM fees, wire fees, delays, and paperwork.

I think a major step toward this dream becoming a reality is networks of value-stable, asset-backed crypto-credits rooted in designs like I described above.

We’re working on some of these now, to be built on [holochain](https://holochain.org).

Stay tuned!

_This is part one of Arthur Brock’s three part series —_ [_Toward an Ethical ICO_](https://medium.com/h-o-l-o/ethical-ico/home)_._
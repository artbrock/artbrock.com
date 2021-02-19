---
layout: page
title: Avoid Blunders in Designing Reputation Systems
permalink: 2019/01/23/avoid-blunders-in-designing-reputation-systems
image: 1_Djk-aOmDSFvN6h-aue09rQ.png
categories:
- holochain
- crypto
- blockchain
- distributed systems
---
[Originally published on [Medium](https://medium.com/metacurrency-project/reputation-is-orthogonal-to-exchange-f113a51dab6c)]

You don’t SPEND reputation because ratings are orthogonal to exchange.
----------------------------------------------------------------------

![Reputation is multi-dimensional and should not look like an account balance of funds]({{ site.urlimg }}1_Djk-aOmDSFvN6h-aue09rQ.png)

It seems like I don’t share often enough about the principles of currency design that I’ve discovered in designing, building and launching currencies over the past 10–20 years. However, this one seems worthy of mention, since I observe it as a frighteningly common mistake as people start to tackle reputation systems.

It’s tempting to blame Cory Doctorow’s [Down and Out in the Magic Kingdom](http://craphound.com/category/down/) for setting this precedent in his depiction of Whuffie. I appreciate that he was at least creating a post-scarcity / post-monetary vision. But I don’t think this problem started with him, it’s more like we fall prey to certain patterns of thinking because money occupies so much of this space in our imagination.

Here’s the crux of it: **Reputation currencies do NOT operate the same way as monetary currencies.**

Keep in mind, I’m working hard to reclaim the word currency to mean something much more than money. It can be a useful mnemonic to think “Current-See” — indicators of currents. We use currencies to build shared, living maps of flows in social spaces.

> Currency: A formal symbol system for shaping, enabling, and measuring flows.

If you find yourself in a situation where you need a reputation currency (and I’d suggest more people should be finding themselves in that situation), please don’t create your reputation system as if it is a monetary system. **You do not spend or trade reputation**. Once you earn it, it is yours.

When I go to college, I do not SPEND my high school degree. When I apply for a job, I don’t SPEND my college degree. When a friend recommends a movie for me to see, neither my friend nor the movie production company are spending any of their reputation. Reputation is not traded. It is not spent. If you make your reputation system operate that way, you have destroyed its integrity as a reputation system.

I’m not saying there is no relationship between the two. A college degree may help you get a higher paying job, but you don’t trade the degree for the job. You don’t trade your exam grades for the degree. You don’t trade your reputation as a confidant for friendship. You don’t trade your race times for a gold medal. In each case, you still keep your reputation AND get the results of that reputation.

I would suggest that it is very much like the relationship between an electrical field and a magnetic field. The two are strongly related. **The magnitude of one affects the magnitude of the other, but they remain orthogonal**. They are at right angles to each other. They’re not opposites, but they are fundamentally different in many important and useful ways.

![Like magnetic fields are orthogonal to electric fields, money and reputation must stay orthogonal to function.]({{ site.urlimg }}0_SftHA4o3VlU0nMO4.png)

Some Design Principles for Reputation Currencies
================================================

Identity and Relationship
-------------------------

Reputation currencies are predicated on continuity of identity. They make no sense without the ability to stay tethered to an identity. It can be a strong/verified identity, or a blind pseudonym on a web site, but without an identity to have the a reputation currency connected to over time, there is no reputation or reputation currency.

Money, on the other hand, can be completely anonymous, and in the form of cash, it’s supposed to be. A business selling a product typically doesn’t care WHO paid, just HOW MUCH was paid. The accounting required for money vs. reputation is quite different.

Also, reputation currencies revolve around relationship where money does not. Basically, anyone can walk into a store, and as long as they’ve got the money to pay for they want, they can buy it. Reputation doesn’t necessarily work that way. There is often a chain of relationship required to engage in a reputational transaction (e.g. you are a friend, or at least referred by a friend).

Issuance, Transaction, and Expiration
-------------------------------------

As more people have questioned and challenged the mainstream monetary system, one of the main concerns people focus on is issuance: who issues it? and how is it issued? They learn national currencies are issued by fiat (spoken into being/created from nothing) and that this is “bad.” They also typically decide that centralized issuance sets up power imbalances and issuance should be democratized.

Guess what? While these may be solid concerns about money, they are oversimplifications that don’t particularly apply to reputation currencies.

![]({{ site.urlimg }}1_zDWgVTH00T_sFcAg8kwYFg.png)

**Issuance:** Reputation, by its very nature, comes into being one of two ways:

1.  It’s spoken into being from nothing by declaration (like you are my _friend_, Bob is _employee of the month_, Jane is our _Office Manager_), or
2.  It’s derived from visible indicators such as measurable performance of actions (like a score on a test, measuring how often you log into a web site, or counting votes in an election).

That first case is complete fiat, which is valid and necessary for many forms of reputation. The second case identifies whether someone has crossed thresholds determined by **_other current-see_**s (such as grades, votes, web log statistics, etc.)

Also, not everyone should get to declare a reputation. Should someone who you’ve never met or interacted with be able to rate you? Should someone who doesn’t know anything about mechanical engineering have a say in whether you’ve attained a level of learning in that field?

Often reputation currencies are only able to be issued by virtue of a relationship or some kind of expertise or authority. And in this case, that’s exactly how you want them to work. I should only be able to give you an eBay rating, if I’ve done an eBay transaction with you. I should only be able to certify your product as safe, if I know how to test it and what the certification requirements are.

**Transaction:** Reputation should not be traded. **_Ever._** That’s not what it is for. It is bound to an identity and is only meaningful when it continues to be bound to that identity. If I can buy or spend reputation rather than earning it by performing in the way the reputation currency indicates, then it is a meaningless signal that has broken loose from any sense that the reputation is supposed to impart.

**Expiration:** It is totally valid, however, for reputation systems to have a valid lifetime after which they expire. A pilot’s license, or driver’s license, certification of skill or knowledge, when those things are not used, they probably should expire. You may even want moving windows on web site reputations that are connected to metrics of activity in the last year or six months, so that the currency is more relevant to current levels of performance rather than some historical hall of fame.

Interplay & Interoperability with other Currencies
--------------------------------------------------

This is the main juicy opportunity of reputation currencies. They create a rich, interactive ecosystem of how lots of parts fit together in lots of ways. This also seems to be the domain where people lack creativity and imagination.

Think about it, my credit rating (reputation) affects my cost and availability of money. My college degree (reputation) affects what I get paid (monetary). My grades (performance) affect whether I get credit (unit of account) for a course.

There are so many ways that different types of currencies can be woven together to create powerful connections and reinforcing relationships. This is really the uncharted frontiers of creativity.

“Lending” Credibility
---------------------

This is a special case of interoperability that is worthy of note. We even use currency-like language for it in English. I can literally “lend” credibility to someone or something by vouching for them. In this case, I am extending some of your belief in me by virtue of my reputation toward establishing confidence in someone else.

A thorough implementation of a reputation system probably ought to include an explicit capacity to do this. If I vouch for someone, it should NOT be like spending reputation like lowering my balance, however, there could be a consequence, whether positive or negative, to my reputation. If they perform well, then my reputation should actually INCREASE for choosing to vouch well. If they perform poorly, my reputation should diminish.

Multi-Dimensionality
--------------------

Unlike a bank account balance, reputation is typically not one dimensional. It’s not just a general good/bad. Reputation is contextual and multi-faceted. I might have a great reputation in the business community for designing brilliant solutions, delivering software on-time, yet being slow to return communications and send invoices. But in my son’s little league baseball community have a very different reputation, for picking him up late, missing games, or being overly-competitive. A simple one-dimensional reputation is useless to portray those kinds of important nuances.

Each community has a different social contract by which members operate with each other. Typically there are a few agreements or expectations which make a interactions work. When creating a reputation system, that’s what you want to focus on. Imagine you wanted to design reputation currencies for eBay. Instead of a single unscaled total of positive or negative feedback points, think of how much more useful it would be to know these things, most of which can be tracked from system activity rather than end-user feedback:

**Sample Reputation for an eBay Seller**

*   How long account has been active, & total # sales
*   % Successful sales (# delivered sales / # total sales)
*   Avg. days to receive item (from shipping tracking data)
*   Avg. Rating (1–5) received for “as advertised”
*   % of transactions requiring problem resolution

**Sample Reputation for an eBay Buyer**

*   How long account has been active & total # bids won
*   % Successful Purchases (# bids paid / # bids won)
*   Avg. time to payment (in hours)
*   Avg. Rating (1–5) given for “as advertised”
*   % of transactions requiring problem resolution

I think if you take a few moments to look at the kind of behaviors that tracking those reputational elements would incent, you might see it’s a heck of a lot better than the “feedback extortion” pattern that currently exists (Threatening to give negative feedback if you receive negative feedback). I hope this example also illustrates why reputation currencies need to have multiple dimensions if you want to clarify what people are good at or reliable for fulfilling on. I did send these suggestions to eBay about 15 years ago. Their feedback system has improved a bit since then, but still hasn’t made it to this level of clarity or usefulness.

Meaningful Scale
================

As long as I’m kind of poking at eBay, we should also look at their original feedback rating as an example of how NOT to have an understandable number. For a long time, there was just a number after people’s username \[like gooduser (12,345)\]. The problem is that number is basically completely useless. A number 10 is great if I’ve only ever made 10 sales or purchases spread out over the past 5 years. However, a number 21,003 is terrible if I’m selling 1,000 units a day of something that people can just download after purchasing and I’ve made 100,000 sales. Without knowing when someone joined, what their volume of activity is, and what percentage of their feedback is positive, the number is completely meaningless.

Using scales people understand, like percentages, percentiles, number of days to receive purchase, 5 star rating, etc. is necessary for reputation to provide any meaning.

Conclusion
==========

There are many great ways for reputation currencies and monetary currencies to interact with each other, but please, do not make the rookie mistake of thinking they should be collapsed into a single currency. In fact, if you want to preserve dimensions of value that your community cares about when transacting with each other, you should probably expect to use more than just two currencies.

_Originally published on_ [_artbrock.com_](http://artbrock.com)_._
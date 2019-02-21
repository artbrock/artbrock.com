---
layout: 	post
title: CIA on Holo Hosting (Confidentiality, Integrity, & Availability)
date: 2019-02-18 19:54:50 -0700
date_gmt: 2019-02-18 02:54:50 -0000
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
- Confidentiality
- Data Integrity
- Holochain
- Cryptography
- High Availability
---

# CIA on Holo Hosting (Confidentiality, Integrity, & Availability)

People are wondering about Holochain apps hosted via Holo, and just what kind of guarantees there are about High Availability of access, Data Integrity and Confidentiality of personal data.

## Availability
One of the keys to creating high availability systems is ensuring redundancy such that there is no single point of failure possible to bring down a running service. Since Holochain apps are fully distributed and each node runs the complete application code, and multiple copies of data gets stored in a self-healing DHT, redundancy and resiliency is ridiculously high. Let's drill into the details.

**Number of Hosts:** We've already sold about 3,000 HoloPorts in 65 countries which will come online quickly. I figure there'll be another couple thousand downloads of Holo by people who want to run hosts on their own hardware or on cloud hosting. So we'll probably start with around 5,000 hosts and a dozen apps.

**Calculating Uptime:** Each app can set specific filters and weights for requirements on host performance and characteristics. I'm going to use sample numbers here for calculations. Suppose an app requires hosts that have at least a 90% uptime record. First, this seems ample, even for boxes in homes, as it allows for 72 hours (3 days) of downtime per month and that should be plenty for locales with reliable electricity and Internet infrastructure. If your app was hosted on a single centralized host, you could have up to 10% chance of downtime, but if we can assume a broad distribution of hosts, not likely to be effected by local outages, then each successive host we add cuts that again by 10%. So if 5 hosts are running your app you are at .1 * .1 * .1 * .1 * .1 = 0.00001 or 99.999% uptime. We've reached 5 nines uptime with just 5 independent hosts. What happens when your app is running on 1,000 hosts? At what point do you just round those nines to 100% availability?

**Centralized Aspects of Holo:** Of course, there are some parts of Holo which are more centralized because we have to interface with existing Internet protocols. For example, your app's domain name must use DNS services to resolve to a host (or in our case we return a batch of 5 hosts). We're using service workers on Cloudflare for all of these "centralized" services and Cloudflare has such high redundancy and reliability across their 155 data centers, that they promise their enterprise customers (like us) **100% uptime in their SLAs**. In other words, even the centralized parts of Holo are many times more reliable and decentralized than platforms like NEO, EOS, or TRON which rely on a very small number of block producers (with 7, 21, and 27 nodes respectively).

This assumes there is no fatal bug in Holochain or in your app, which is running on all the nodes, and in either case, such a bug would need to be found and fixed to achieve 100% availability.

## Integrity
Content addressable and signed
Mutual enforcement of rules via randomized peer validation


## Confidentiality
Encrypted over the wire: encrypted P2P tunnels inside HTTPS
Encrypted at rest:
Sharded across many nodes:
Contract with Hosts/Providers:
Trust metrics:
Private host groups:

---
layout: page
subheadline: Templates
title:  "Cryptography"
teaser: "The default template for posts and pages aligns the page beautifully in the middle. <strong>But</strong> you can customize posts/pages easily via switches in the front matter to <em>get a sidebar</em> and/or to <em>turn off meta-information</em> at the end of the page like categories, tags and dates."
meta_teaser: "This is an example of a beautiful aligned post in the middle. There is no sidebar to distract the reader. The difference to the Page-Template is, that you find meta-information at the bottom of the post."
breadcrumb: true
categories:
    - research
tags:
    - blog
    - content
    - post
    - post format
image:
    title: gallery-example-1.jpg
    caption: Unsplash.com
    caption_url: http://unsplash.com
author: zieglerk
---

Cryptographic Protocols

Alice and Bob are two millionaires. They want to determine who is richer, but do not want to disclose their actual wealth. A possible solution is to provide a trusted third party with their accounts' balances and let this party announce who is richer. The use this crutch is unsatisfactory and leaves every cryptographer with an uncomfortable feeling. Through secure multi-party computations, we provide Alice and Bob with a protocol to jointly compute the answer to their question using cryptographic primitives instead of a trusted third party.

Cryptography's model of users is quite simplistic: every user is either good or bad. Game theory offers a more nuanced version: every participant is trying to achieve his or her individual goals and behaves "rationally" in order to do so. We revisit multi-party computations with such rational players and arrive at surprising results.

By the way, the example above is the classic Yao's Millionaires'
Problem. A recent application is the Bitcoin cryptocurrency, where the
users jointly compute the "history" of transactions.


## Other Post Research
{: .t60 }
{% include list-posts tag='research' %}

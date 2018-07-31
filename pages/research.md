---
layout: page
show_meta: false
title: "Research"
subheadline: "TODO"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/research/"
---

> All is fair in war, love, and mathematics.
<cite>Eric Temple Bell</cite>


<ul>
    {% for post in site.categories.research %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>


## Cryptographic Protocols

Alice and Bob are two millionaires. They want to
determine who is richer, but do not want to disclose
their actual wealth. A possible solution is to provide a
trusted third party with their accounts' balances and
let this party announce who is richer. The use this
crutch is unsatisfactory and leaves every cryptographer
with an uncomfortable feeling. Through <i>secure
multi-party computations</i>, we provide Alice and Bob
with a protocol to jointly compute the answer to their
question using cryptographic primitives instead of a
trusted third party.

Cryptography's model of users is quite simplistic:
every user is either good or bad. Game theory offers a
more nuanced version: every participant is trying to
achieve his or her individual goals and behaves
"rationally" in order to do so. We revisit multi-party
computations with such rational players and arrive at
surprising results.

By the way, the example above is the
classic <a href="https://en.wikipedia.org/wiki/Yao%27s_Millionaires%27_Problem">Yao's
Millionaires' Problem</a>. A recent application is the
<a href="https://en.wikipedia.org/wiki/Bitcoin">Bitcoin
cryptocurrency</a>, where the users jointly compute the
"history" of transactions.


## Machine Learning

> All models are wrong, but some are useful.
<cite>George Box</cite>

The majority of attacks on cryptosystems is statistical, ranging from
frequency analysis (of human languages) to correlations (of bit
patterns). Differential and linear cryptanalysis are prime examples of
the latter.

The classic field of statistics has gotten a fresh impulse from the
emergence of artificial intelligence/machine learning in the last
century. Both being based on huge amounts of data, they offer
different perspectives. We take this as inspiration to attack
cryptosystems using machine-learning methods.



## Polynomials over Finite Fields

Polynomials appear all over mathematics and computer
science. They inherit many basic notions from the
integers, e.g. primality and squarefreeness. But the
absence of carries for sums and products of
polynomials makes them more accessible.

In the business of understanding polynomials, we measure our success
by our ability to count the ones with certain properties --
approximately and exactly. From this point of view, I approached:
- special multivariate polynomials
- decomposable univariate polynomials.

The decomposition of polynomials has many applications.
- In the field of signal processing, its application to the Fourier
  transform improves the transmission rate.
- It is closely related to the factorization of projective
  polynomials. These play a prominent role in the recent advances on
  the discrete logarithm problem.
- It is closely related to the factorization of skew polynomials. This
  problem is at the heart of some cryptographic key-exchanges.
- It is the underlying structure of iterated block ciphers. Then
  decomposition is equivalent to breaking.
- Finally, you find it in Beethoven's compositions.

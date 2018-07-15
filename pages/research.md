---
layout: page
show_meta: false
title: "Research"
subheadline: "TODO"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/design/"
---
<ul>
    {% for post in site.categories.research %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>

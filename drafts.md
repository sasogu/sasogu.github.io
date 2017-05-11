---
layout: page
title: esborranys
permalink: /drafts/
---

<ul class="post-list">
{% for article in site.drafts reversed %}
    <li>
        <h2><a class="poem-title" href="{{ article.url | prepend: site.baseurl }}">{{ article.title }}</a></h2>
        <p class="post-meta"></p>
      </li>
{% endfor %}
</ul>

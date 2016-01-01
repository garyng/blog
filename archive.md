---
layout: page
title: Archive
icon: "fa-bars"
---
<ul>
  {% for post in site.posts %}

    {% unless post.next %}
      <h3>{{ post.date | date: '%Y' }}</h3>
    {% else %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% if year != nyear %}
        <h3>{{ post.date | date: '%Y' }}</h3>
      {% endif %}
    {% endunless %}

     <li>
     	<a href="{{ post.url }}" class="archive-post-title">{{ post.title }}</a>
     	<div class="post-excerpt">
        <small class="post-meta">
            <span class="post-date"><span class="fa fa-calendar"></span> {{ post.date | date: "%b %d" }}</span>
        </small> 
            {{ post.excerpt | strip_html | truncatewords: 10 }}
        <a href="{{ post.url }}" class="post-more">Read More » </a>
     	</div>
     </li>
  {% endfor %}
</ul>
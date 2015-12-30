---
layout: page
title: Tags
description: "An archive of posts sorted by tag."
icon: "fa-tags"
---

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tag_words = site_tags | split:',' | sort %}

{% capture site_tags %}
  {% for tag in site.tags %}
    {{ tag[1].size | plus: 10000 }}///{{ tag[0] }}///{{ tag[1].size }}{% unless forloop.last %},{% endunless %}
  {% endfor %}
{% endcapture %}
{% assign sorted_tags = site_tags | split:',' | sort %}

<div id="tags">
  <ul>
    {% assign loopindex = 0 %}
    {% for tag in sorted_tags reversed %}
    {% if loopindex == 20 %}
      {% break %}
    {% else %}
      {% unless forloop.last %}
        {% assign tagitems = tag | split:'///' %}
          <a class="tags-link" href="#{{ tagitems[1] | cgi_escape }}" style="font-size:{{ tagitems[2] | times:100 | divided_by:site.tags.size | plus: 100 }}%">{{ tagitems[1] }}<sup> {{ tagitems[2] }} </sup></a>
      {% endunless %}
    {% endif %}
    {% assign loopindex = loopindex | plus:1 %}
    {% endfor %}
  </ul>

  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
  <h2 id="{{ this_word | cgi_escape }}">{{ this_word }}</h2>
  <ul>
    {% for post in site.tags[this_word] %}{% if post.title != null %}
    <li><time datetime="{{ post.date | date_to_string }}">{{ post.date | date: "%d %B %Y" }}</time> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}{% endfor %}
  </ul>
  {% endunless %}{% endfor %}
</div>
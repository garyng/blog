---
layout: page
title: Archive
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
     	<a href="{{site.url}}{{post.url}}">{{ post.title }}</a>
     	<div class="post-excerpt">
     		<info datetime="{{ page.date | date: "%Y-%m-%d" }}">
          		{{ post.date | date: "%b %d" }}
        	</info>
          {% if post.content contains '<!-- More -->' %}
            {{ post.content | split:'<!-- More -->' | first | strip_html }}
          {% else %}
            {{ post.excerpt | split:'</p>' | first | strip_html }}
          {% endif %}
     	</div>
     </li>
  {% endfor %}
</ul>
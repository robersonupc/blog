---
layout: page
title: Home
ogtype: website
---

<h2>Últimos posts</h2>

<ul class="posts">
  {% for post in site.posts %}

  	{% if post.draft != true %}
    	<li class="{{ post.class }}">
          <a href="{{ post.url }}">{{ post.title }}</a> 
          <span class="date">{{ post.date | date_to_string }}</span>
      </li>
    {% endif %}

  {% endfor %}
</ul>
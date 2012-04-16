---
layout: base
title: Home
ogtype: website
---

<h2>Artigos</h2>

<ul class="posts">
  {% for post in site.posts %}

  	{% if post.draft != true and post.category != 'blog' %}
    	<li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}

  {% endfor %}
</ul>

<h2>Últimos posts</h2>

<ul class="posts">
  {% for post in site.posts %}

  	{% if post.draft != true and post.category == 'blog' %}
    	<li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}

  {% endfor %}
</ul>
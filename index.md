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

<h3>Meus principais posts no Blog da Caelum</h3>

<ul class="posts">
  <li><a href="http://blog.caelum.com.br/websockets-html5-em-java-com-jetty-web-em-tempo-real/">WebSockets HTML5 em Java com Jetty: Web em tempo real</a></li>

  <li><a href="http://blog.caelum.com.br/nao-use-jquery-no-seu-site-mobile-conheca-o-zepto-js/">Não use jQuery no seu site mobile: conheça o Zepto.JS</a></li>
  
  <li><a href="http://blog.caelum.com.br/css-facil-flexivel-e-dinamico-com-less/">CSS fácil, flexível e dinâmico com LESS</a></li>

  <li class="destaque"><a href="http://blog.caelum.com.br/2012-e-o-ano-do-mercado-mobile-no-brasil/">2012 é o ano do mercado mobile no Brasil</a></li>

  <li><a href="http://blog.caelum.com.br/flexibilidade-em-paginas-para-dispositivos-moveis-com-media-queries/">Flexibilidade em páginas para dispositivos móveis com media queries</a></li>

  <li><a href="http://blog.caelum.com.br/pixels-pixels-ou-pixels-dicas-de-web-mobile-com-viewport/">Pixels, pixels ou pixels? Dicas de Web Mobile com viewport</a></li>

  <li class="destaque"><a href="http://blog.caelum.com.br/por-uma-web-mais-rapida-26-tecnicas-de-otimizacao-de-sites/">Por uma Web mais rápida: 26 técnicas de otimização de Sites</a></li>

  <li><a href="http://blog.caelum.com.br/otimizacoes-na-web-e-o-carregamento-assincrono/">Otimizações na Web e o carregamento assíncrono</a></li>

  <li><a href="http://blog.caelum.com.br/vivendo-no-cloud-a-infraestrutura-externa-da-caelum-em-11-solucoes/">Vivendo no cloud: a infraestrutura externa da Caelum em 11 soluções</a></li>

  <li><a href="http://blog.caelum.com.br/css3-e-progressive-enhancement/">CSS3 e progressive enhancement</a></li>

  <li><a href="http://blog.caelum.com.br/css3-e-o-futuro-da-web/">CSS3 e o futuro da Web</a></li>

  <li><a href="http://blog.caelum.com.br/seguranca-em-aplicacoes-web-injecao-de-novos-parametros/">Segurança em aplicações Web: Injeção de novos parâmetros</a></li>

  <li><a href="http://blog.caelum.com.br/seguranca-em-aplicacoes-web-xss/">Segurança em aplicações Web: XSS</a></li>
</ul>
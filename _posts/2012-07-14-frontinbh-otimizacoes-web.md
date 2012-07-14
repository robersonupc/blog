---
layout: post
title: "Front In BH 2012: sobre performance e otimizações e web"
category: palestra
description: Slides, anotações e complementos da minha palestra sobre Otimizações Web no FrontInBH 2012
---

Dia 14 de Julho, tive o prazer de palestrar no [FontInBH 2012](http://www.frontinbh.com.br/), excelente evento de *front-end* na capital mineira, sobre **otimizações web**. Seguem os slides, anotações e links complementares.

## Por uma Web mais rápida: técnicas de otimização de sites

Tive a oportunidade de palestrar sobre esse tema que gosto bastante e considero de máxima importância para os desenvolvedores. Os slides da palestra estão no [slideshare](http://www.slideshare.net/caelumdev/frontinbh-2012-por-uma-web-mais-rpida-tcnicas-de-otimizaes-de-sites-por-srgio-lopes "Slides: Por uma Web mais rápida: técnicas de otimização de sites") pra você ver ou baixar.

{% slideshare 13635829 %}

A palestra tratou de diversos tópicos de otimização, mas, claro, pelo tempo curto, não focou em detalhes de implementação. Se você gostou e quer se aprofundar no tema, sugiro alguns links:

### Sobre estudos de caso e impactos

* Tenho um post com [14 fatos tweetáveis sobre performance web](/tweetables-performance-web-otimizacoes/). Lá há links pra muitos estudos de caso de empresas famosas.
* Um link recente do SEOmoz sobre os [impactos de performance em SEO](http://www.seomoz.org/ugc/13-questions-and-answers-about-google-site-speed-and-seo).
* Considerações sobre latência e o [mito da banda larga](http://zoompf.com/blog/2011/12/i-dont-care-how-big-yours-is).

### Pra se aprofundar nas técnicas de otimização

* Tenho um post bem completo no [blog da Caelum com 26 práticas de otimizações](http://blog.caelum.com.br/por-uma-web-mais-rapida-26-tecnicas-de-otimizacao-de-sites/). Recomendo.
* Os guias de boas práticas do [Google](https://developers.google.com/speed/docs/best-practices/rules_intro) e do [Yahoo](http://developer.yahoo.com/performance/rules.html) são excelentes.
* Livros nós temos: *High Performance Web Sites*, 2007, O'Reilly e *Even Faster Web Sites*, 2009, O'Reilly, do Steve Souders.
* **[Curso Online de Otimizações Web](caelum.com.br/curso/online/otimizacoes-web/) da Caelum que estou fazendo (lançamento em breve)**

### Ferramentas pra implementar as técnicas vistas

* Minificação de CSS, JS e HTML: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [Google Closure Compiler](https://developers.google.com/closure/compiler/), [uglifyjs](http://marijnhaverbeke.nl//uglifyjs), [htmlcompressor](http://code.google.com/p/htmlcompressor/).
* Compressão de imagens: [Smushit](http://smushit.com/), [Kraken.io](http://kraken.io/), [JPEGmini](http://www.jpegmini.com/), [ImageOptim](http://imageoptim.com/).
* Diagnóstico: [PageSpeed](https://developers.google.com/pagespeed/), [YSlow](http://developer.yahoo.com/yslow/), [WebPageTest](http://webpagetest.org/).
* Sprites: [SpriteMe](http://spriteme.org/), ou na mão com [ImageMagick](http://stackoverflow.com/questions/88711/how-to-concatenate-icons-into-a-single-image-with-imagemagick)
* [Conversor de data URI](http://www.scalora.org/projects/uriencoder/) 
* Frameworks de carregamento assíncrono de JS: [LABjs](http://labjs.com/), [HeadJS](http://headjs.com/), [ControlJS](http://stevesouders.com/controljs/). Ou (prefiro) o simples [async do HTML5](http://www.sitepoint.com/non-blocking-async-defer/).


------


Você estava no evento? Deixe sua opinião sobre a palestra e não esqueça de participar da **promoção aqui no blog**!


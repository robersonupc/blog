---
layout: post
title: "QCon SP 2012: anotações da palestra 'Mitos do Front end' do Zeno Rocha"
date: 2012-08-20
category: evento
description: Minhas anotações da palestra do Zeno Rocha no evento QCon SP 2012
---

Zeno Rocha ([blog](http://zenorocha.com/), [twitter](https://twitter.com/zenorocha)), da Liferay, palestrou na track de **Front End** do evento [QCon SP 2012](http://www.qconsp.com/) sobre vários **Mitos do front end** ([slides](http://talks.zenorocha.com/2012/qconsp/)).

## Minhas anotações

- Backend costuma ver frontend como fácil, mas não é verdade
	* Mas CSS3 permite muita coisa avançada e complexa
- "CSS é muito repetitivo"
	* Use pre processadores
	* E ainda tem o CSS4 com variáveis, por exemplo
- "CSS Sprites são difíceis de manter"
	* Compass generator
- "Java == JavaScript"
- "JS é ruim e cheio de bugs"
	* [] + [] = ""
	* {} + {}
	* [] + {}
	* ha explicacoes pras inconsistencias
- Mas ha novidades no EcmaScript 6
	* "use strict"
- "JavaScript não é bem documentado"
	* Acesse a MDN e não w3schools
- "JS nao eh nada modular"
	* require.js, head.js, backbone.js, YUI
	* facilitam organizacao do codigo
- "Código não é consistente"
	* por exemplo, sem padronizacao de codigo CSS e JS
- "Sem comunidade"
	* linguagem mais usada no github
	* muitos eventos
- "Código de qualquer jeito"
	* use CSS Lint, JS Lint se quiser regras
- "Codigo nao eh testado"
	* da pra fazer TDD com jasmin
	* QUnit
- "Preciso do browser pra rodar testes"
	* zombie.js
	* phantom.js é um browser webkit headless
- "preciso de linguagens nativas pra apps"
	* appceletator, phonegap, webapp
	* ou nem empacota, faz só css e html: Firefox OS
- "HTML5 é o futuro"
	* html é hoje, browsers ja suportam
	* e html5 ~ HTML + CSS3 + APIS JS
	* old radio, wormz = HTML5
	* WebGL
- "HTML5 nao funciona no IE"
	* semantica ha polyfill com shiv
	* CSS3 tem CSS3 Pie
	* ha muitos polyfill no site do Modernizr
	* mas realmente precisamos que tudo rode igual em todo browser?
	* a guerra dos browser ainda nao acabou
	* "Salve a Web"
- Design sem conteudo é só decoracao. Principal é o conteudo.
	* navegador antigo é tipo TV preto e branco
	* e a TV ja resolveu isso, melhorando o sinal pra TVs mais modernas
- "HTML5 vai matar o Flash"
	* Occupy Flash é babaquice
	* sucesso da aplicacao nao é a tecnologia

## Meus comentários

Palestra divertida do Zeno com ótimos slides. É um tema que pra gente que está há mais tempo no frontend não tem muita novidade. Mas foi uma palestra essencial pro público-alvo do QCon, que tem muitos arquitetos e pessoal de infra. 

O Zeno mostrou vários preconceitos e mitos que envolvem o crescente mundo do frontend e esclareceu vários pontos. Foi uma palestra muito bem avaliada no evento, o que mostra que aquele público precisava mesmo ouvir o recado do que significa desenvolver frontend hoje em dia.

## Outras palestras da track de Front End do QCon SP 2012

Tem a [minha palestra sobre mobile web](/palestra-mobile-web/), incluindo slides, anotações, referências e demos. O evento teve muitas palestras de vários temas. Anotei aqui apenas as da trilha de Front End que assisti:

* [Reponsive Design e a Ubiquidade da Web](/qconsp-responsive-design-eduardo-shiota/), com Eduardo Shiota
* [Modular CSS: projetando CSS para aplicativos](/qconsp-modular-css-bernard-de-luna/), com Bernard De Luna
* [HTML5 Offline & Storage: Soluções para um mundo sem conexão permanente](/qconsp-html5-offline-storage-gabriel-oliveira/), com Gabriel Oliveira


---
layout: post
title: "Front In BH 2012: anotações da palestra 'CSS sucks' do Zeno Rocha"
category: evento
description: Minhas anotações da palestra do Zeno Rocha no evento Front in BH 2012
---

Zeno Rocha ([blog](http://zenorocha.com/), [twitter](https://twitter.com/zenorocha)), da Liferay, palestrou no evento [Front In BH 2012](http://www.frontinbh.com.br/) sobre pré-processadores CSS com o título **CSS Sucks** ([slides](http://talks.zenorocha.com/frontinbh-2012/)).

<figure>
	<img src="img/posts/frontinbh2012/zeno.jpg">
	<figcaption>"Palestra do Zeno Rocha no Front In BH 2012"</figcaption>
</figure>

## Minhas anotações

* CSS3 faz muitas coisas ferradas
* Mas é CSS é desorganizado (não tem padrão de código)
* CSS é repetitivo (mesma cor copiada em vários lugares)
* Precisa de muitos prefixos
* Nada intuitivo (exemplo é um gradiente grande e detalhado)
* Legal é usar pré-processadores pra gerar CSS
* Stylus: tira chaves e ponto e vírgula
* Prefix-free é ruim de performance. Isso não deveria ser feito em client-side. 
* Prefixr é melhor. Tem plugin pro sublime.
* Mixins pra reaproveitar código.
* NIB são mixins prontos pro stylus
* SASS
	* variáveis pra evitar repetição de valores
	* partials com @import pra fazer include direto
	* possível escolher SASS ou SCSS
* Compass é uma extensão pro SASS com facilidades
* Compilador pra dev que fica observando modificações e compila
* Geração fácil de sprites com compass.
* [LESS](http://blog.caelum.com.br/css-facil-flexivel-e-dinamico-com-less/)
	* comentários de linha com //
	* aninhamento de regras
	* operações matemáticas
	* funções de cor
* [LESS elements](http://lesselements.com/) são mixins prontos
* Há programas Desktop pra compilar essas coisas - tipo CodeKit, WinLess etc
* Porque o Twitter Bootstrap usa less e nao sass? Segundo eles:
	* 6x mais rápido
	* Less é mais simples
	* é em JavaScript

## Meus comentários

Sou bastante fã de pré processadores, e usuário assíduo do LESS - tenho até um [post sobre LESS](http://blog.caelum.com.br/css-facil-flexivel-e-dinamico-com-less/) no blog da Caelum. Gostei de ver na palestra um pouco dos outros, em especial o Stylus que eu só conhecia de nome e não tinha visto código ainda.

Só não gostei do título e da motivação; pra mim, CSS não é tão ruim assim. Uso pré-processadores pra ajudarem em alguma tarefa a mais, mas não vejo tão negativamente o CSS. Foram levantados uns pontos nos primeiros slides como ruins: [desorganizado](http://talks.zenorocha.com/frontinbh-2012/#10), [repetitivo](http://talks.zenorocha.com/frontinbh-2012/#11), [cheio de prefixos](http://talks.zenorocha.com/frontinbh-2012/#12) e [nada intuitivo](http://talks.zenorocha.com/frontinbh-2012/#13). Pra mim, nenhum deles é culpa do CSS. A desorganização é culpa do programador (e vai acontecer usando LESS ou sass), a repetição no CSS é resolvida com classes (e variáveis no CSS4), os prefixos são culpa dos browsers que abusaram desse recurso que era pra ser uma exceção, e intuitivo ou não vai depender da qualidade do código independente se é CSS ou não.

Recomendo pré-processadores de CSS. Mas os vejo mais como um complemento bacana do que como um um recurso antagônico ao CSS.

## Outras palestras do Front in BH 2012

Tem a [minha palestra sobre otimizações web](/frontinbh-otimizacoes-web/), incluindo slides, vídeo e post complementar. E as outras:

* [Rest Client Side](/front-in-bh-rest-client-side-alexandre-gaigalas/), com Alexandre Gaigalas
* [Wordpress aliado do Front End](/front-in-bh-wordpress-leandro-vieira/), com Leandro Vieira
* [Amazon AWS e CDN no Peixe Urbano](/front-in-bh-peixe-urbano-amazon-cdn-alexandre-tabor/), com Alexandre Tabor
* [Novo Cinto de Utilidades do Desenvolvedor JavaScript](/front-in-bh-novidades-mozilla-leo-balter/), com Leo Balter
* [Desafios do Design Mobile](/front-in-bh-desafios-design-mobile-horacio-soares/), com Horácio Soares
* [Estilizando folhas de estilo com estilo](/front-in-bh-estilizando-css-com-estilo-bernard-de-luna/), com Bernard de Luna


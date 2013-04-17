---
layout: post
title: "Front In BH 2012: anotações da palestra 'Wordpress aliado do Front End' do Leandro Vieira"
date: 2012-07-17
category: evento
description: Minhas anotações da palestra do Leandro Vieira no evento Front in BH 2012
---

Leandro Vieira ([blog](http://leandrovieira.com/), [twitter](https://twitter.com/leandrovieira/)), da Apiki WP, palestrou no evento [Front In BH 2012](http://www.frontinbh.com.br/) sobre Wordpress com o título **O WordPress como aliado do Desenvolvedor FrontEnd**.

<figure>
	<img src="img/posts/frontinbh2012/leandro.jpg">
	<figcaption>"Palestra do Leandro Vieira no Front In BH 2012"</figcaption>
</figure>

## Minhas anotações

* Wordpress cresce absurdamente em adoção. 22% em 2012, perspectiva de 50% pra 2017.
* 1a fase: blog. 2a fase: CMS. 3a fase: plataforma de aplicação.
* iMasters tá sendo todo migrado pra Wordpress hoje. 10 anos de conteúdo.
* Diversas funções PHP pra você integrar seu tema à plataforma e plugins.
* Marcação gerada é semântica e cheia de classes pra estilização.
* Dev font-end que for criar pra WP deve conhecer essas classes e marcação pra evitar retrabalho.
* Novidade da próxima versão 3.5:
	* Tema padrão novo, já sem muita cara de blog. Mais cara de site.
	* Recurso de personalização em cima de um tema minimalista.
	* Galerias de fotos com lightbox.
* Wordpress traz funções pra facilitar a integração de JavaScript entre plugins. Ajuda a isolar JS.
* Declaro via PHP os arquivos JS, suas dependências etc. Depois, o WP gera as tag script satisfazendo as dependências, evitando duplicidade de frameworks etc.
* Otimizações: tem opção de inserir o JS no fim do body ao invés do head.
* O WP não inclue o jQuery com $, mas usa sempre o noConflict() e expõe só o jQuery.
* Já o CSS é totalmente aberto pro dev. Há muitas classes e IDs pro desenvolvedor usar.
* WP faz fingerprint de arquivos CSS/JS via param na URL.
* WP cospe HTML semântico, temas novos em HTML5. Usa microformats, tem preocupações com SEO.

## Meus comentários

Confesso que não sou o maior fã do Wordpress. Acho ele um tanto inflado demais, com muitos recursos e muita complicação pra se fazer coisas até simples. E curioso que, pra mim, o grande ponto onde o Wordpress é mais fraco é *justo no front end*. Acho ele legal como plataforma CMS pra controlar os conteúdos, mas o HTML gerado costuma ser péssimo e os plugins só pioram isso.

Aqui no blog eu uso o Jekyll e fujo do Wordpress. Mas vejo seu uso sim para coisas maiores, que exijam mais controle de permissão e publicação. Curioso que, na palestra, o Leandro focou bastante no uso do Wordpress como **plataforma de aplicações** quaisquer, não só blog e CMS. E eu nunca tinha pensado nisso. Mas certamente o Wordpress seria a última plataforma do mundo que eu escolheria pra um site qualquer (falou até de ecommerce em Wordpress) - blog e CMS até vai, mas usar o Wordpress pra outras coisas me parece crime grave.

Esse meu ponto de vista deve ser por causa da minha origem de programador. Pra mim, prefiro uma plataforma simples e focada no backend do que uma ferramenta genérica. Talvez valha mais a pena usar o Wordpress quem não tem muita noção de backend e prefere algo pronto; mas aí pode ser que estejamos só tapando o sol com a peneira e escondendo o verdadeiro problema que é a falta de um backend mais robusto e focado no projeto.

Tirando meus problemas pessoais com Wordpress de lado, aprendi muitas coisas na palestra sobre como estender o Wordpress. O Leandro mostrou como eles têm uma preocupação de expor um HTML semântico com classes bem definidas. E aprendi que dá pra otimizar os JavaScripts pra ficar no fim da página ao invés do head, um problema que vejo em muitos blog e eu achava que era culpa do Wordpress.

## Outras palestras do Front in BH 2012

Tem a [minha palestra sobre otimizações web](/frontinbh-otimizacoes-web/), incluindo slides, vídeo e post complementar. E as outras:

* [Rest Client Side](/front-in-bh-rest-client-side-alexandre-gaigalas/), com Alexandre Gaigalas
* [Amazon AWS e CDN no Peixe Urbano](/front-in-bh-peixe-urbano-amazon-cdn-alexandre-tabor/), com Alexandre Tabor
* [Novo Cinto de Utilidades do Desenvolvedor JavaScript](/front-in-bh-novidades-mozilla-leo-balter/), com Leo Balter
* [Desafios do Design Mobile](/front-in-bh-desafios-design-mobile-horacio-soares/), com Horácio Soares
* [CSS Sucks](/front-in-bh-css-sucks-zeno-rocha/), com Zeno Rocha
* [Estilizando folhas de estilo com estilo](/front-in-bh-estilizando-css-com-estilo-bernard-de-luna/), com Bernard de Luna


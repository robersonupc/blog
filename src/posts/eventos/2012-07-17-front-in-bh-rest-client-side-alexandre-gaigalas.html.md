---
layout: post
title: "Front In BH 2012: anotações da palestra 'REST client side' do Alexandre Gaigalas"
category: evento
description: Minhas anotações da palestra do Alexandre Gaigalas no evento Front in BH 2012
---

Alexandre Gaigalas ([twitter](https://twitter.com/alganet/)), do Yahoo, palestrou no evento [Front In BH 2012](http://www.frontinbh.com.br/) sobre REST e HTTP com o título **REST Client Side - Uma visão geral sobre projeto e consumo de APIs em REST no navegador e vantagens de utilizar recursos do protocolo HTTP** ([slideshare](http://www.slideshare.net/Alganet/presentations)).

<figure>
	<img src="img/posts/frontinbh2012/alexandre.jpg">
	<figcaption>"Palestra do Alexandre Gaigalas no Front In BH 2012"</figcaption>
</figure>

## Minhas anotações

* Links são as coisas mais legais na Internet.
* Antigamente usávamos referências estáticas, bibliografia, apontando livro, página etc.
* URIs apontam pra conceitos, mas não são o conceito. Trafegamos representações desses conceitos.
* Formatos de URIs: http:, ftp:, mailto:
* Como expressar links: link, a, img, script
* JSON não tem links, não serve pra substituir o XML
* Se você coloca um endereço numa propriedade do JSON, é só um texto. Não é um link.
* Cabeçalhos HTTP pra negociar com o servidor: Accept-Language passa língua
* Accept para content negotiation.
* Mesmo conceito, mesma URL, mas representações diferentes.
* XML é extensível.
* Você pode usar <link> dentro do XML pra indicar mais recursos. Ex: no twitter, devolvo links pros seguidores, pra quem eu sigo, pra listas etc.
* XML pode ter a mesma tag repetida, JSON não. Facilita extensibilidade.
* O Alexandre ama XML :)
* Podemos usar o jQuery pra navegar e manipular XML devolvido via Ajax, JSON não.
* HTTP suporta erros via status code. Muitas APIs devolvem 200 com erro dentro proprietário. Ruim.
* 2xx: sucesso, 3xx: redirects, 4xx: client error, 5xx: server error
* Posso mandar texto do status code que eu quiser. E o código de acordo com o HTTP.
* Negociação de conteúdo: Formato, Idioma, Charset, Encoding, Range, X-...
* Ctrl F5 manda cabeçalhos de revalidação de caches.
* HTTP auth: suporte básico a autenticação
* HTTP digest é mais seguro que cookies, oauth

## Meus comentários

O protocolo HTTP é realmente muito rico e extremanente interessante para basear APIs Web. Concordo com o uso do protocolo mais a fundo, ao invés de criar mini protocolos proprietários. E achei bem interessante a ideia do Alexandre de se usar os status code HTTP com mensagem customizada - sempre pensei em mandar a mensagem no body, além do status code.

E ele discutiu um ponto bem interessante sobre como JSON é um formato de texto sem suporte a hipermídia ou outros conteúdos semânticos. Nesse sentido, o XML é muito mais robusto por oferecer hipermídia e um modelo extensível. Mas confesso que eu ando meio desiludido com a ideia de semântica global no REST; acho que, na prática, não ajuda tanto assim.



## Outras palestras do Front in BH 2012

Tem a [minha palestra sobre otimizações web](/frontinbh-otimizacoes-web/), incluindo slides, vídeo e post complementar. E as outras:

* [Wordpress aliado do Front End](/front-in-bh-wordpress-leandro-vieira/), com Leandro Vieira
* [Amazon AWS e CDN no Peixe Urbano](/front-in-bh-peixe-urbano-amazon-cdn-alexandre-tabor/), com Alexandre Tabor
* [Novo Cinto de Utilidades do Desenvolvedor JavaScript](/front-in-bh-novidades-mozilla-leo-balter/), com Leo Balter
* [Desafios do Design Mobile](/front-in-bh-desafios-design-mobile-horacio-soares/), com Horácio Soares
* [CSS Sucks](/front-in-bh-css-sucks-zeno-rocha/), com Zeno Rocha
* [Estilizando folhas de estilo com estilo](/front-in-bh-estilizando-css-com-estilo-bernard-de-luna/), com Bernard de Luna


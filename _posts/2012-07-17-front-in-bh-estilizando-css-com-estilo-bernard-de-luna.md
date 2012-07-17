---
layout: post
title: "Front In BH 2012: anotações da palestra 'Estilizando Folhas de Estilo com Estilo' do Bernard De Luna"
category: evento
description: Minhas anotações da palestra do Bernard De Luna no evento Front in BH 2012
---

Bernard De Luna ([blog](http://bernarddeluna.com/blog/), [twitter](https://twitter.com/bernarddeluna/)), da MeltDSP, palestrou no evento [Front In BH 2012](http://www.frontinbh.com.br/) sobre boas práticas de CSS com o título **Estilizando Folhas de Estilo com Estilo** ([slides](http://bernarddeluna.com/talks/)).

### Minhas anotações

* Ninguém sabe CSS.
* CSS é muito fácil e aí vc vai testando na tentativa e erro.
* Styleshit. A gente não sabe direito o que tá fazendo.
* Performance
	* Key selector é o último seletor
	* Browser seleciona da direita pra esquerda.
	* class vs. id não faz muita diferença na prática
	* não use tag.classe, só .classe
	* Devíamos usar mais classes no HTML pra qualificar melhor no CSS.
	* Não usar * como filho
	* Ou * implícito: `body [type=text]` é na verdade `body *[type=text]`
	* Não use @import
	* Evite seletores CSS3: first-child, nth-child etc
	* border-radius é bastante custoso. Mais que gradientes e shadows.
	* Reflow e Repaint
	* Definir tamanho das imagens no CSS ou IMG evita reflows.
* Modularização
	* OOCSS: Reuse, Reduce, Recycle
	* Classes mais reusáveis.
	* Use OCSS + LESS
	* Usar variáveis é uma boa.
	* Documente o código sempre.
	* Crie objetos padrões e reaproveitáveis pro projeto.
	* Crie classes baseadas na função e não no conteúdo.
	* Smacss é uma alternativa. 
* Mágica
	* Surpreenda, reinvente, brinque, explore.
	* Muitos potenciais hoje em dia.
	* [old radio em css3 puro](https://developer.mozilla.org/en-US/demosdetail/old-radio/launch) - impressionante!

### Meus comentários

O Bernard focou bastante nas questões de performance de código CSS, evitar reflows, usar seletores otimizados etc. Concordo que são pontos válidos e realmente eficazes. Só deixo uma ressalva que essas micro otimizações de código CSS só devem ser feitas depois que otimizações maiores já foram feitas - como habilitar gzip ou jogar o JS pra baixo. A não ser que você tenha uma página gigantesca, o impacto prático de usar seletores mais rápidos é bem menor do que a gente imagina.

Sobre CSS modularizável e boas práticas, concordo completamente. Ultimamente tenho me deparado com muito CSS ruim e acoplado em projetos - inclusive meus de anos atrás que hoje preciso dar manutenção. Criar CSS mais flexível e reaproveitável é algo que tenho buscado ultimamente e digo: é **muito** mais difícil do que parece.

E um comentário especial pro demo impressionante do [old radio](https://developer.mozilla.org/en-US/demosdetail/old-radio/launch) que ele mostrou no final da palestra. Desenho inteiramente em CSS3 e com Web Audio API por trás. É fantástico.

## Outras palestras do Front in BH 2012

Tem a [minha palestra sobre otimizações web](/frontinbh-otimizacoes-web/), incluindo slides, vídeo e post complementar. E as outras:

* [Rest Client Side](/front-in-bh-rest-client-side-alexandre-gaigalas/), com Alexandre Gaigalas
* [Wordpress aliado do Front End](/front-in-bh-wordpress-leandro-vieira/), com Leandro Vieira
* [Amazon AWS e CDN no Peixe Urbano](/front-in-bh-peixe-urbano-amazon-cdn-alexandre-tabor/), com Alexandre Tabor
* [Novo Cinto de Utilidades do Desenvolvedor JavaScript](/front-in-bh-novidades-mozilla-leo-balter/), com Leo Balter
* [Desafios do Design Mobile](/front-in-bh-desafios-design-mobile-horacio-soares/), com Horácio Soares
* [CSS Sucks](/front-in-bh-css-sucks-zeno-rocha/), com Zeno Rocha


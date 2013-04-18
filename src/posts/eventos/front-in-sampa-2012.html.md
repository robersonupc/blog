---
layout: post
title: "Front in Sampa 2012: Design Responsivo, testes A/B, Web Mobile, WebGL, Acessibilidade, SEO e carreira"
date: 2012-11-06
category: evento
description: Tudo sobre a primeira edição do evento de Front-end paulistano que reuniu excelentes palestrantes em Novembro/2012
---

Em 3 de Novembro, tivemos o [Front in Sampa 2012](http://frontinsampa.com.br/). Um excelente evento da comunidade front-end de São Paulo onde tive o prazer de participar como palestrante e espectador. Nesse post, minhas impressões do evento, **slides**, **palestras** e **links** pros tópicos discutidos por todos os palestrantes.

## O evento

Foi no **Hotel Intercontinental**, na Alameda Santos, um super espaço. A sala era bem confortável, com cadeiras e mesas para todos, réguas de tomada por todo lado e **excelente infraestrutura**. Faltou o Wi-Fi, mas todo mundo hoje em dia tem 3G, então nem fez falta. O coffee break foi um pouco fraco.

A organização foi **impecável**. Impressionante o que os organizadores conseguiram fazer em um primeiro evento. Registro aqui meus parabéns!

Foram **7 palestras** e uma **mesa redonda** no final. Ficam aqui as minhas impressões de cada uma.

<figure>
	<img src="/img/posts/frontinsampa2012/logo.png">
</figure>

## Responsive Design: Por quê e para quê utilizar um framework? Por Fernando Monteiro

O [Fernando](https://twitter.com/newaeonweb) fez uns [slides](https://speakerdeck.com/newaeonweb/palestra-responsive-design-front-in-sampa-2012) bem bacanas sobre *design responsivo*. Eles têm bastante informação, tornando fácil acompanhar de casa. Pra hora da palestra, os slides muito densos acabaram atrapalhando e o tempo ficou curto.

Se você quiser saber mais sobre o tema, recomendo meu [artigo sobre design responsivo](/responsive-web-design/) aqui no blog. Com relação a usar frameworks, sou da opinião contrária: acho que frameworks CSS com breakpoints fixos e grids responsivos só atrapalham.

<figure>
	<img src="/img/posts/frontinsampa2012/sala.jpg">
	<figcaption>Auditório cheio no hotel Intercontinental</figcaption>
</figure>

## Como manter um Front-End produtivo e eficiente em testes AB e Personalização. Por Mauricio Wolff

Umas das melhores palestras do evento. O [Mauricio](https://twitter.com/bitbonsai) trabalha na Dell no time de testes A/B e targeting, e contou a experiência deles nessa área. O site da Dell é visto em 176 versões diferentes, de países e línguas, com mais de 200 mil visitantes por hora. E eles rodam diversos testes A/B ao mesmo tempo, criados pela equipe de marketing.

Ele falou bastante na palestra sobre o processo da Dell, sobre Agile e como manter código limpo e organizado. Dos testes A/B em si, ele falou da importância de se obter um resultado com **significância estatística** e citou que, na Dell, isso exige geralmente 2 semanas de tráfego. Por lá, os testes costumam rodar de 4 a 6 semanas. Outro truque que ele falou que também gosto é de rodar o **teste com dois controles**, pra ver se os resultados convergem.

Eu ando meio frustrado com testes A/B ultimamente por não trabalhar em um site com volume de acessos grande como o da Dell. Meus testes dificilmente obtém a significância estatística necessária. Essa palestra me deixou ainda mais relutante com relação a meus testes pequenos.

## Truques de Web Mobile. Por Sérgio Lopes

Na sequência, veio minha palestra sobre **Web Mobile**. Aliás, foi uma oportunidade pra eu atualizar os [slides aqui no blog](/palestra-mobile-web/) com **correções e atualizações** - em especial, sobre o novo Internet Explorer 10.

O pessoal foi bastante receptivo no twitter e em conversas depois do evento, então acho que foi boa. Foi muito bom participar do **Front in Sampa** e agradeço o convite da organização do evento.

Você pode seguir minha [palestra de web mobile](/palestra-mobile-web/) aqui no blog com slides, textos explicativos e demos dos slides pra acompanhar no celular/tablet.

<figure>
	<img src="/img/posts/frontinsampa2012/palestrantes.jpg">
	<figcaption>Palestrantes do Front in Sampa 2012</figcaption>
</figure>

## WebGL, Three.js e tQuery. Por Kaique da Silva

Pra fechar a manhã do evento, o [Kaique](https://twitter.com/japaloc) apresentou o Web GL de maneira bastante produtiva com o [Three.js](https://github.com/mrdoob/three.js/) e o [tQuery](http://jeromeetienne.github.com/tquery/) - que eu não conhecia. 

Embora essa área de 3D no browser não seja minha praia, achei bem interessante o tQuery, pareceu bem fácil de usar. O Kaique fez um post depois do evento com [mais informações sobre o tQuery e WebGL](http://cladecoders.tumblr.com/post/34992750279/tquery-zero).

## Acessibilidade Web, por Horácio Soares e Clécio Bachini

Sem dúvidas, a melhor palestra do evento. O [Horácio](https://twitter.com/horaciosoares) e o [Clécio](https://twitter.com/cbachini) falaram de acessibilidade, leis e acordos internacionais que eu nem conhecia, tipos de usabilidade e mais. Depois, fizeram uma análise completa no *novo site do Itaú* que tem sérios problemas de usabilidade. Alguns destaques de melhorias possíveis:

* Sempre usar ALT nas imagens.
* Usar headings semânticos pro usuário navegar. Criae h1, h2, h3 etc, pensando nos filhos com relação à conteudo.
* Performance ruim com imagens gigantes e dezenas de arquivos JS;
* Permitir navegação pelo teclado.
* Usar [landmarks ARIA](http://www.w3.org/TR/wai-aria/roles).
* Não fazer links com "saiba mais" ou "clique aqui". Ruim pra SEO e ruim pra navegar via TABs.
* Não recriar elementos, como um combobox, que deveria ser um `select` sempre, ou botão feito com div.
* Usar labels nos campos, e não fazer placeholder com value.
* Na home, não colocar link de volta pra home (como no logo no topo).
* Aumentar o contraste de cor entre elementos. Usar fontes maiores.
* Elementos de navegação, como menu, não podem parecer um banner.
* Nunca usar TITLE nas imagens, só ALT. (nem pra SEO serve)
* Não abrir janelas externas nos links.
* Colocar uma boa descrição nos links que fazem coisas inesperadas (download de arquivo, sair do site etc).

Você pode ver também os [slides da palestra de front-end com acessibilidade](http://www.slideshare.net/horacio.soares/frontend-com-acessibilidade-frontinsampa-nov-2012).

<figure>
	<img src="/img/posts/frontinsampa2012/horacio-clecio.jpg">
	<figcaption>Palestra de Usabilidade com Horácio Soares e Clécio Bachini</figcaption>
</figure>

## SEO para front-end. Por Fábio Ricotta

O [Fábio](https://twitter.com/fabioricotta) é um excelente palestrante, bastante famoso por causa da MestreSEO. A palestra foi muito boa e dinâmica mas, pra mim pelo menos, sem muitas novidades.

Ele falou de 10 tópicos básicos de SEO que um programador front-end precisa se preocupar: colocar title na página; colocar alt nas imagens; usar URLs amigáveis; otimizar o tempo de carregamento; usar rich snippets; usar *rel=author* com perfil do Google+; submeter um sitemap; evitar Flash e Ajax.

Achei interessante ele falar sobre [performance web](http://blog.caelum.com.br/por-uma-web-mais-rapida-26-tecnicas-de-otimizacao-de-sites/) como fator de SEO. O Googe fala disso há 3 anos, mas eu não imaginava que já fosse um fator tão significativo. Os slides da [palestra de SEO para front-end](http://www.slideshare.net/fabioricotta/seo-para-frontend) estão disponíveis.

<figure>
	<img src="/img/posts/frontinsampa2012/ricotta.jpg">
	<figcaption>Palestra de SEO com Fábio Ricotta</figcaption>
</figure>

## Biografia do Zeno Rocha e do Bernard de Luna

O [Zeno](https://twitter.com/zenorocha) e o [Bernard](https://twitter.com/bernarddeluna) fizeram uma palestra-show sem tema definido, mas que tratou de contar a história da carreira dos dois. Eles mostraram projetos que fizeram, principalmente open source, e mostrarm o impacto que isso teve no sucesso profissional deles.

Advogaram contra o pessoal que faz freelas, o que foi bastante polêmico e gerou muita controvérsia. Falaram bastante de você reservar um tempo para brincar com novas tecnologias, fazer projetos, se divertir. No fim, fizeram um demo com música usando a Audio API.

<figure>
	<img src="/img/posts/frontinsampa2012/painel.jpg">
	<figcaption>7 Masters: debate sobre front-end, Mercado, Desenvolvimento e Tendências</figcaption>
</figure>

*Fotos oficiais do evento que você encontra no [Facebook deles](https://www.facebook.com/media/set/?set=a.380437568703158.92613.328721007208148&type=1).*

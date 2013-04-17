---
layout: post
title: 'Review do livro "The Mobile Book" da Smashing Magazine'
date: 2013-01-21
category: review
description: Um livro épico, reunindo diversos **autores famosos** para falar sobre mobile. Muitos tópicos e diversos insights. Leitura obrigatória pra qualquer desenvolvedor mobile (web e nativo).
shareImage: /img/posts/reviews/the-mobile-book-share.jpg
---

Um livro épico, reunindo diversos **autores famosos** para falar sobre mobile. Muitos tópicos e diversos insights. **Leitura obrigatória** pra qualquer desenvolvedor mobile (web e nativo).

Lançado pela [Smashing Magazine](http://smashingmagazine.com), o [The Mobile Book](http://www.the-mobile-book.com/) é uma coletânea de **7 capítulos sobre mobile de autores importantes**. Nomes como Brad Frost, Trent Walton, Peter-Paul Koch e outros.

O livro tem um viés um pouco mais de design que de código -- normal, pra quem acompanha a *Smashing Magazine*. Há conteúdo técnico, mas boa parte é de UX, patterns visuais, mercado, análises, estratégias e futuro. E, apesar de falar de mobile como um todo, há uma preferência clara por **web** e **design responsivo** (o que eu gostei, claro).

Tirando alguns poucos pontos que não gostei, **recomendo o livro** pra todo desenvolvedor Web, front-end, designer e quem mais estiver envolvido com mobile.

<figure>
	<img src="img/posts/reviews/the-mobile-book.jpg">
	<figcaption>"The Mobile Book, pela Smashing Magazine"</figcaption>
</figure>

O livro está dispoível no [site oficial](http://www.the-mobile-book.com/) por **$18 na versão ebook** -- que inclui PDF, epub e mobi -- e $50 impresso+ebook. Tem 330 páginas no total. Ele tem um **design muito bonito**. Mas a versão Kindle deixa muito a desejar, e acabei lendo no PDF mesmo, o que me irritou um pouco. Não tenho, por exemplo, minhas anotações sincronizadas. Mesmo assim, separei algumas.

São 7 artigos na versão final do livro. Há a promessa de um ebook extra com mais artigos a ser liberado em breve aos compradores. Meus comentários:

## 1) What’s Going on in Mobile?, por Peter-Paul Koch

Mais conhecido como [ppk](https://twitter.com/ppk), é o autor do conhecidíssimo [QuirksMode.org](http://quirksmode.org/) e trabalha com mobile antes de isso ser moda. Nesse capítulo, ele traça um panorama do mercado mobile atual com muitas informações baseadas em sua análise do mundo todo.

Gostei muito de ler sobre a mecânica por trás das forças no mundo mobile: fabricantes, operadoras e produtoras de SO. Há muitas sutilezas aí que acabam determinando como o mercado se move. Outro ponto forte é a análise dos browsers mobile, a imensa variedade, suas diferenças e números, incluindo dicas pra trabalhar com *proxy browsers* como o Opera Mini.

Das dicas gerais, ele fala pra **evitar bibliotecas JS**, usar **detecção de user-agent**, e montar um **device lab**. Há muito mais, claro. Separei umas poucas frases de efeito:	

> Never assume anything on mobile. Never. Anything.

<!---->
> Operators and device vendors are afraid of commoditization and irrelevance and will defend themselves by influencing the overall user experience. Sometimes this is not a good idea.

<!---->
> The Web will become an OS, but currently it’s a weapon in the hands of the losers.

## 2) The Future of Mobile, por Stephanie Rieger

A Stephanie teve a impossível tarefa de prever o futuro, o que tornou o artigo meio irrelevante pra mim. Ninguém sabe o futuro e, pra mim, o artigo é pura especulação sob a ótica de uma única pessoa que nem trabalha em fabricantes de aparelhos ou outro grande player da indústria.

Há pontos interessates, como ideias de como o **NFC** pode melhorar a interação dos usuários num futuro próximo. Mas sempre que alguém fica insistindo na *ideia idiota* de que geladeiras com Internet são o futuro, fico irritado. (e espero estar certo nessa minha previsão também individualista de que geladeiras com Internet **não são o futuro**)

Ela fala muito de dispositivos bizarros, como uma caixa de remédios conectada na Internet e outras da *Internet das Coisas*. Até divertido como histórias futurísticas, mas de pouca utilidade prática. A melhor citação dela é a que fecha o capítulo, transformando tudo que veio antes em irrelevante:

> My final advice is this: don’t try to predict the future. Carefully observe what’s happening today, and learn about what is coming next. Think of ways to build flexibility into each and every product you develop. 

## 3) Responsive Design Strategies, por Trent Walton

O [Trent Walton](http://trentwalton.com/) escreve muito sobre Web responsiva e esteve por trás do redesign da homepage  da Microsoft. Esse artigo é um básico de *responsive design*, revendo conceitos importantes mas não tão importante pra quem já trabalha com isso.

Ele começa revendo os conceitos do [Ethan Marcotte](/review-responsive-design-ethan-marcotte/) de grids fluídos, mídias flexíveis e media queries. Comenta boas práticas importantes como escrever valores das media queries em `em` e baseado no design, e ideias pra media queries verticais.

Aí entra uma parte mais profunda onde ele fala de diversos assuntos. Como devemos fazer o design baseado no browser e não no Photoshop. Técnicas para priorizar contéudo quando começamos a mover tudo na tela com media queries -- que ele chama de *content coreography*. Ou ainda, dicas para tipografia fluída em responsive design.

## 4) Responsive Design Patterns, por Brad Frost

Eu gosto muito do trabalho do Brad Frost e acompanho o [blog dele](http://bradfrostweb.com/) sempre. Por isso, devo dizer que o capítulo não foi muita novidade pra mim. Mas é um **conteúdo fantástico**, e foi bom reler suas opiniões condensadas de uma vez.

O capítulo analisa diversas formas de organizar o layout quando a tela começa a mudar de tamanho. Colocar navegação no topo, embaixo, offcanvas? São muitas questões a considerar para organizar o layout e conteúdo da página. Outro ponto é o uso de **conditional loading** pra quebrar páginas grandes do desktop em diversas páginas no mobile.

Além disso, ele fala como outros aspectos da página são afetados pelo design responsivo, como **imagens**, **mapas**, **widgets**, **tipografia**, **tabelas**, **formulários** e mais. É o capítulo mais completo do livro.

> Ensure that content flows logically. Users don’t want to sift through a bunch of disparate content to find what they’re looking for.

<!---->
> Treat layout as an enhancement. Bryan Rieger eloquently stated that, “The absence of support for @media queries is in fact the first @media query.”

<!---->
> Find the balance between navigation accessibility and unobtrusiveness. Like a good friend, it should be there when you need it, but not always in your face, demanding attention.

<!---->
> Giving users different experiences is alright. However, the full functionality should remain accessible to everybody in some way, shape or form.

<!---->
> Make sure you actually need one. Many carousels are used to sweep content under the rug. A carousel should not be a lazy substitute for making important content strategy decisions.

## 5) Optimization For Mobile, por Dave Olsen

Dado meu aprofundamento nessas duas áreas -- mobile e otimizações --, esse era certamente o artigo que eu mais esperava ler. E ele é muito bom, apesar de não entrar em algumas técnicas muito avançadas e bizarras que eu tenho lido ultimamente.

Ele fala de números concretos que mostram o tamanho das páginas crescendo, em como a latência das redes móveis afeta a performance e outros. Aí cita que *responsive design* pode esconder problemas de performance tornando a página visualmente menor, mas com mesmo peso de performance que no Desktop. Isso não é necessáriamente ruim se sua página for pequena, mas com a média em torno de **1 MB**, só colocar media queries não vai fazer mágicas.

A parte das técnicas de otimização é bem próxima do que [já sabemos](http://blog.caelum.com.br/por-uma-web-mais-rapida-26-tecnicas-de-otimizacao-de-sites/) -- gzip, minificação, cache etc. Mas há algumas dicas a mais pra mobile, como não usar `display:none` pra esconder conteúdo no celular, ou usar `localStorage` pra cache, ou ainda como simular conexões ruins com um proxy. E, claro, ele também prega o abandono do jQuery e outras libs pesadas.

Por fim, ele ainda fala de **RESS**, que é o responsive design com detecção de browser pra rodar algumas coisas server-side. Mas confesso que ainda não tenho uma opinião muito certa sobre isso.

> While mobile network speeds are slower than desktop speeds, they aren’t on the whole that bad. The real Web performance difference between the two is latency. 

<!---->
> For me, the most disappointing feature of HTML5 so far has to be AppCache. [...] My advice regarding AppCache for now is simple: stay away from it.

## 6) Hands On Design for Mobile (UX Perspective), por Dennis Kardys

Pior artigo do livro. Extremamente longo e confuso. Fala de um monte de assuntos e ao mesmo tempo não fala de nada. É um artigo mais de UX e não técnico, mas, mesmo assim, é pouco prático e cheio de bla bla bla.

Ele fala da mudança de paradigma do mobile, do workflow de criação ser mais ágil, um monte de besteiras sobre rascunhos, wireframes e prototipação. Tem várias palavras bonitas que não querem dizer nada. Além de ruim, me irritou muito o fato dele ter 65 páginas, mais que qualquer outro capítulo.

## 7) Designing With Gestures and Touch, por Josh Clark

Fechando o livro veio o Josh Clark com um artigo sobre UX mas bem melhor que o anterior. O ponto principal é que touch e gestos são a base da interação com computadores agora.

As novas máquinas com Windows 8 misturam tudo -- touch, mouse, teclado, trackpad -- o que torna impossível otimizar para um cenário específico. Não há mais cenários específicos e detectar tablets como diferentes de PCs é besteira. **Devemos desenvolver agora tudo sempre pensando em touch**; se o usuário usar mouse, será tranquilo. O contrário não é verdade.

Boa parte do capítulo é mostrando as diferenças visuais entre as plataformas móveis e as diferenças de interação do usuário entre celulares, tablets e PCs. É bem interessante ver como pequenos detalhes afetam a experiência do usuário. Ele mostra muitos exemplos de Apps e Sites e como o touch e os gestos ajudam ou atrapalham a interação. **É um excelente capítulo**.

> On iPhone, put app controls at screen bottom. On Android, put app controls at screen top. For the Web, favor navigation at page bottom (not screen bottom).

<!---->
> When controls display or affect content, place them below or to the side of that content, never above.

<!---->
> Assume that every screen your website serves is a touch- screen.

<!---->
> Gestures are the keyboard shortcuts of touch.

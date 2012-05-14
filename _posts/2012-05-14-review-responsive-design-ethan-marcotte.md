---
layout: post
title: 'Review do livro "Responsive Web Design" do Ethan Marcotte'
category: blog
description: Conheça o livro referência de design responsivo, escrito pelo criador da técnica, Ethan Marcotte
shareImage: /img/posts/livro-rwd-ethan/livro-rwd-share.jpg
---

Design responsivo é o futuro da Web. Ethan Marcotte criou o termo em 2010 em um famoso [artigo do A List Apart](http://www.alistapart.com/articles/responsive-web-design/ "Artigo original do Ethan sobre RWD"), que depois deu origem a seu livro ["Responsive Web Design"](http://www.abookapart.com/products/responsive-web-design), editado pela *A Book Apart*.

Há pouco tempo, li a versão em ebook do livro em meu Kindle Fire -- recomendo um leitor colorido como o Fire pelas imagens. Minha experiência começou no excelente processo de compra, extremamente descomplicado, da [A Book Apart](http://www.abookapart.com/). Dois cliques, nenhum campo preenchido e compra feita pelo PayPal -- e eu não tinha comprado nunca com eles, não tinha cadastro anterior nem nada. *(aliás, se você for comprar, recomendo o [combo com o "Mobile First" do Luke Wroblewski](http://www.abookapart.com/products/mobile-first-responsive-web-design-bundle))*

{% figure "Livro Responsive Web Design de Ethan Marcotte. Editora A Book Apart." %}
	livro-rwd-ethan/livro-rwd.jpg
{% endfigure %}

Sobre o livro em si. **Leitura bastante agradável**, um livro **direto ao ponto** e **curto**, o que eu acho uma grande vantagem. Ethan Marcotte é o pai do design responsivo, então ler o que ele tem a dizer traz uma certa **autoridade**, além de ser interessante pra ver como surgiram as ideias desse movimento.

São cinco capítulos, que giram em torno dos três ingredientes principais dos designs responsivos -- **grids fluídos**, **[media queries](http://blog.caelum.com.br/flexibilidade-em-paginas-para-dispositivos-moveis-com-media-queries/ "Artigo sobre Media queries no Blog da Caelum")** e **imagens flexíveis**. Ele fala bastantes também sobre porque design responsivo é a única solução viável pra Web do futuro, cada vez mais fragmentada em dispositivos, telas e navegadores diferentes. É desenvolvido um exemplo no livro de ponta a ponta, que pode até ser [visto online](http://responsivewebdesign.com/robot/ "Exemplo do livro").

*Mas o livro é bastante básico*. Não me entenda mal, livros básicos são ótimos e precisamos deles. Porém, se você já leu e estudou um pouco de responsive design, não vai achar nenhuma grande revelação no livro. A parte de media queries, por exemplo, aborda poucas opções em comparação ao que temos hoje nos navegadores; o capítulo de imagens flexíveis então, é bastante superficial dado o estado das [discussões atuais](http://css-tricks.com/which-responsive-images-solution-should-you-use/ "Vários frameworks de imagens responsivas") sobre o tema. Eu, que acompanho bastante a comunidade de design responsivo, leio muitos blogs e artigos sobre o assunto, não aprendi nada de muito novo. Mas **gostei do livro pelo formato e objetividade**, e vou **recomendá-lo pra quem estiver começando** na área.

Alguns destaques das anotações que fiz no Kindle durante a leitura (e se você quiser saber mais sobre design responsivo, recomendo esse [meu artigo aqui no blog](/responsive-web-design/ "Artigo: Design Responsivo por uma Web Única")):

> We need to break our habit of translating pixels from Photoshop directly into our CSS, and focus our attention on the proportions behind our designs. It's about becoming *context-aware*: better understanding the ratio-based relationships between element and container.

> We assume mobile users need less content in part because desktop users can tolerate more. [...] But just because desktop users *can* sift through more content, does that mean they need to? In other words, why is easy access to key tasks only the domain of mobile users? Why can't all users of our sites enjoy the same level of focused, curated content?

> If you design mobile first, you create agreement on what matters most. You can then apply the same rationale to the desktop/laptop version of the web site. We agreed that this was the most important set of features and content for our customers and business -- why should that change with more screen space?

> When working with media queries, fixed-width layouts often need to be re-coded at every resolution breakpoint, whereas a design built with percentages, not pixels, maintains its proportions from one resolution to the next.

> [...] the kinds of decisions we constantly make as designers, choosing between flexibility and control. What responsive design show us, however, is that it doesn't need to be a binary proposition; we can have designs founded upon a flexible layout, while still including fixed-width elements.

> Responsive web design isn't inteded to serve as a replacement for mobile web sites. Responsive design is,  believe, one part design philosophy, one parte front-end development strategy. And as a development strategy, it's meant to ve evaluated to see if it meets the needs of the project you're working on.

> Rather than simply siloing our content into different, device-specific sites, we can use progressive enhancement to ensure quality access for all, with an enhanced experience for those devices that are capable of it.

> In the age of portable 3G hotspots and wi-fi enabled phones, it can be dangerous to automatically equate screen's dimensions with the bandwidth available to it.

PS. Se você prefere um conteúdo em português, aguarde o [prometido livro](https://groups.google.com/d/msg/html5-css3-brasil/hmsnIB4qBak/t3RXJSiF-BUJ) do [Tárcio Zemel](http://desenvolvimentoparaweb.com/) sobre design responsivo. 
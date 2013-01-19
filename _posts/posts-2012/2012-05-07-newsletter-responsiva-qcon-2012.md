---
layout: post
title: "A Newsletter Responsiva do QCon 2012"
category: blog
description: Como foi o processo de criação e desenvolvimento da newsletter responsiva do QCon

shareImage: /img/posts/newsletter-qcon-2012/qcon-share.png
---

O [QCon](http://qconsp.com), maior evento de arquitetos e desenvolvedores do mundo, está com preço promocional de inscrição só até dia **9 de maio**. Pra divulgar, montamos uma **newsletter**. E aproveitei pra fazer uma [newsletter responsiva](/email-newsletter-mobile-responsivo/ "Artigo sobre como fazer newsletter responsiva").

O pessoal do [InfoQ](http://infoq.com/br) já tinha um [modelo de newsletter](http://sergiolopes.github.com/newsletter-qcon-2012/newsletter-infoq.html "Newsletter padrão do InfoQ") que eles usam. Já seguem várias das boas práticas para emails que coloquei no meu [artigo](/email-newsletter-mobile-responsivo/) sobre newsletters. Uso de **textos**, **layout simples**, HTML com **tabelas**, **pouco CSS**, **imagens pequenas**, layout não dependente de imagens etc. *Só não é responsiva*, mas tá quase lá.

Na newsletter do evento, deveríamos seguir as mesmas boas práticas já seguindas pela newsletter normal. Aí aproveite e **fiz ela ser responsiva**. E, na verdade, se você já está com layout simples, poucas imagens e foco no texto, *adicionar a responsividade* é bem mais fácil.

**[Veja o resultado final](http://sergiolopes.github.com/newsletter-qcon-2012/newsletter.html "Newsletter Responsiva do QCon 2012")**. Redimensione o navegador e veja a responsividade.

{% figure Foto da newsletter responsiva do QCon 2012 (<a href="http://sergiolopes.github.com/newsletter-qcon-2012/newsletter.html">veja a real</a>) %}
	newsletter-qcon-2012/newsletter-pequena.jpg
{% endfigure %}

## Suporte a Desktop e Mobile

Com emails, porém, o mais importante é saber como eles **funcionam de verdade**, nos programas de emails, webmails e dispositivos móveis reais. Veja:

* [Gmail via web no Chrome](/img/posts/newsletter-qcon-2012/newsletter-qcon-gmail.jpg "Ver screenshot"): é o cenário ideal, tudo funciona.
* [iPhone 3GS](/img/posts/newsletter-qcon-2012/newsletter-qcon-iphone.jpg "Ver screenshot"): ela se adapta à tela menor, *sem media queries*.
* [iPad 2](/img/posts/newsletter-qcon-2012/newsletter-qcon-ipad2.jpg "Ver screenshot"): funcionando perfeito, tamanho máximo.
* [Hotmail via web no IE](/img/posts/newsletter-qcon-2012/newsletter-qcon-hotmail.jpg "Ver screenshot"): repare como as bordas redondas e a textura do *background* somem. Mas a experiência para o usuário é muito boa.

Testando em outros lugares, teremos resultados muito parecidos com os cenários acima. A excessão, claro, é o **Outlook**, cujas últimas versões usam um motor de renderização pior que o IE6, baseado no Word! Mas desista de combatê-lo. As pessoas usam Outlook e só podemos tentar deixar o email *aceitável*. Veja:

* [Outlook 2010](/img/posts/newsletter-qcon-2012/newsletter-qcon-outlook2010.jpg "Ver screenshot"): bordas e fundo somem. Tudo fica alinhado no centro (**!?**) e aparecem quadrados brancos no topo dos blocos de conteúdo. *Mas é tudo legível e a renderização é aceitável*.
* [Outlook 2003](/img/posts/newsletter-qcon-2012/newsletter-qcon-outlook2003.jpg "Ver screenshot"): curioso reparar que o Outlook bem mais velho renderiza **melhor** que a última versão! Isso porque o tal motor de Word só foi introduzido a partir da versão 2007, antes era baseado no IE.

## Dicas de como foi feito e projeto no Github

Principalmente, segui todas as [práticas sobre newsletters resposivas](/email-newsletter-mobile-responsivo/ "Artigo sobre como fazer newsletter responsiva") do artigo aqui do blog.

Boa parte da responsividade se deve ao layout simples baseado em uma coluna. Basta uma **tabela com 100% de largura** (com um `max-width` de 550px) e os elementos vão se ajustar lá dentro sem problemas. 

A exceção é onde mostramos as fotos dos participantes em duas colunas. Usei **imagens de tamanhos pequenos**, sabendo que caberiam 2 imagens lado a lado mesmo na tela pequena do mobile. O nome do palestrante eu fiz num bloco de tamanho fixo com `display:inline-block` que segue à direita da foto se houver espaço ou escorrega pra linha de baixo se não couber. **Responsividade sem media queries**!

E o melhor: se quiser ver todos os truques, **liberei o código da newsletter** num [projeto no Github](https://github.com/sergiolopes/newsletter-qcon-2012).

Outros truques incluíram a imagem elástica do rodapé, uso do *premailer* e *htmlcompressor* pra gerar o HTML final e até uso de conditional comments pra Outlook. (sim, isso [existe](http://www.campaignmonitor.com/blog/post/1774/using-conditional-comments-to-1/ "Sobre conditional comments pra Outlook 2007 e 2010")!)

Uma prática útil pra ter em mente ao montar newsletters é *[progressive enhancement](http://blog.caelum.com.br/css3-e-progressive-enhancement/ "Artigo no blog da Caelum sobre Progressive Enhancement e CSS3")*. Repare como a base do layout não são as bordas redondas e a textura de fundo. A base é sólida em HTML e CSS básicos e compatíveis, e os **recursos de CSS3 vão a mais**, pra quem abrir o email num cliente que suporte. Mas não são recursos necessários pro usuário visualizar tudo satisfatoriamente.

O que achou dessa newsletter responsiva na prática? Não deixe de ver [o código no projeto](https://github.com/sergiolopes/newsletter-qcon-2012) e comente aqui!


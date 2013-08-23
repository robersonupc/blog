---
layout: post
title: "CSS: Você deveria usar box-sizing: border-box em todas as suas páginas"
date: 2013-08-23
originalDate: 2012-06-25
version: 2
category: web
description: O box model padrão do CSS é uma pedra no sapato. Com o box-sizing, você troca para um esquema mais fácil. Confira!
shareImage: /img/posts/box-sizing.png

feedWarning: Se você estiver num leitor RSS, é possível que os exemplos não funcionem adequadamente por causa do CSS. Recomendo ver o <a href="http://sergiolopes.org/css-box-sizing-border-box/">artigo original</a> no site. (é otimizado pra mobile também)
---

<style>
div code {
	white-space: pre;
}
</style>

O *box model* padrão do CSS é uma das coisas mais contra-intuitivas que existem. Mas você pode trocá-lo com o *box-sizing* do CSS3. E, melhor, funciona em todos os navegadores -- até no IE8!

Todo elemento no HTML é uma caixa. Controlamos seu tamanho com *width*, sua borda com *border* e ainda temos as margens externas e internas com *margin* e *padding*. *Box model* é como todas essas propriedades se relacionam pra determinar o tamanho final do elemento.

E o *box model* tradicional da especificação tem uma regra bastante confusa: diz que a propriedade *width* trata do tamanho do conteúdo do elemento, não considerando seu *padding* e *border* (e a mesma coisa com a altura).

Isso quer dizer que, se você quiser que um elemento ocupe metade da página mas com uma borda de 10px, não funciona fazer `border: 10px solid #555; width:50%`. O tamanho final do elemento terá 20px mais metade do tamanho do pai.

<div style="background: #bada55; border: 10px solid #555; width: 50%; box-sizing: content-box; -moz-box-sizing: content-box;-webkit-box-sizing: content-box;">
	Queria que ele ocupasse metade da tela com uma borda.

	<code>
	border-width: 10px;
	width: 50%;
	</code>
</div>

<div  style="background: #55bada; width: 50%; box-sizing: content-box; -moz-box-sizing: content-box;-webkit-box-sizing: content-box;">
	Ele também tem width 50%, mas sem borda.

	<code>
	width: 50%;

	</code>
</div>

É assim que as coisas funcionam mas certamente não é assim que nós pensamos. Se você pensa no tamanho de uma caixa, você não pensa só no conteúdo dela. Uma caixa termina em sua borda e isso deveria ser considerado seu tamanho.

Um viva ao IE6!
---------------

O curioso é que os primeiros a perceberem que o *box model* do CSS era esquisito foi a **Microsoft**. Já no IE6 em *quirks mode* eles trocaram o *box model* pra que o *width* significasse o tamanho total até a borda. A ideia era boa mas o problema foi eles atropelarem a especificação da época, o que acabou criando boa parte dos problemas de incompatibilidade entre navegadores. O IE em *standards mode* usa o *box model* oficial e esse é o padrão a partir do IE8.

Mas como a ideia, no fim, era boa, isso acabou se transformando no **box-sizing** do CSS3, que nos permite **trocar o box model** que queremos usar.

Por padrão, todos os elementos têm o valor `box-sizing: content-box` o que indica que o tamanho dele é definido pelo seu conteúdo apenas -- em outras palavras, é o tal box model padrão que vimos antes. Mas podemos trocar por `box-sizing: border-box` que indica que o tamanho agora levará em conta até a borda -- ou seja, o *width* será a soma do conteúdo com a borda e o padding.

<div style="background: #bada55; border: 10px solid #555; width: 50%; box-sizing: border-box; -moz-box-sizing: border-box;-webkit-box-sizing: border-box;">
	Queria que ele ocupasse metade da tela com uma borda.

	<code>
	box-sizing: border-box;
	border-width: 10px;
	width: 50%;
	</code>
</div>

<div  style="background: #55bada; width: 50%; box-sizing: border-box; -moz-box-sizing: border-box;-webkit-box-sizing: border-box;">
	Ele também tem width 50%, mas sem borda.

	<code>
	box-sizing: border-box;
	width: 50%;

	</code>
</div>

Usando o novo box-sizing
------------------------

O [suporte](http://caniuse.com/css3-boxsizing "Can I use box-sizing?") nos navegadores é excelente, indo até o IE8 -- e há um [polyfill](https://github.com/Schepp/box-sizing-polyfill) pra IE6 e IE7 se você precisar. O Firefox ainda precisa do prefixo **-moz-** e versões mais antigas do Chrome, Safari e Android, do **-webkit-**.

Eu uso essa regra em todos os elementos de todas as minhas páginas -- inclusive aqui no blog. Então aplico o seletor universal:

```css 
* {
	-webkit-box-sizing: border-box;
	   -moz-box-sizing: border-box;
	        box-sizing: border-box;
}
```

Existe uma preocupação quanto à performance do seletor universal `*` mas ela certamente não será um problema para algo tão simples e pontual como essa regra. O ruim é abusar e ter diversas regras com seletor universal e descendentes. E você nem devia estar se preocupando com performance de CSS se ainda não tem uma nota maior que 95 no PageSpeed; gzip, minificação, sprites, etc são bem mais importantes pra performance.

Outro ponto importante é que o seletor `*` não pega pseudo-elementos. Na prática, acabo usando:

```css 
*, *:before, *:after {
	-webkit-box-sizing: border-box;
	   -moz-box-sizing: border-box;
	        box-sizing: border-box;
}
```

---

**Atualização Ago/2013**: acrescentei os pseudo-elementos na regra e removi informações sobre bug antigo do Firefox.

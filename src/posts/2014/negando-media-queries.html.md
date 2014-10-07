---
layout: post
title: "Como negar uma media query"
date: 2014-08-27
category: blog
category: web
description: Você tem uma media query (min-width:600px). Como escrever o inverso disso? Dica: não é trivial.
---

Nessa altura do campeonato, todo mundo já escreveu alguma media query na vida. A sintaxe parece simples. Taca um `@media (min-width: 600px)` lá e pronto. Mas alguns desafios começam a surgir no dia a dia. Um interessante é como negar uma media query, **escrever seu inverso**.

Pegue essa media query mesmo: `@media (min-width: 600px)`. Ela seleciona *telas com largura maior ou igual a 600 pixels*. Simples. Agora quero escrever o inverso disso. Parece simples certo?

A primeira tentativa pode ser um `@media (max-width: 600px)`. Faz sentido até. Mas aí lembramos que as media queries consideram seu valor **inclusive**. Isso quer dizer que quando a tela for exatamente **600px**, ambas as media queries vão ser verdadeiras. Não é o que queremos.

Podemos pensar então em um ajuste e chegar a `@media (max-width: 599px)`. Isso pega *telas até 599 pixels inclusive*. E a outra pegava *de 600 pixels pra cima, inclusive*. Pronto. Será? **Não.**

Isso só funcionaria se você imaginar que não existe valor entre 599 e 600, o que pode fazer sentido pensando em *pixels físicos na tela* (ou não, hoje temos subpixels). Mas o **px** no CSS é uma medida relativa diferente de um pixel físico - a gente chama de **CSS pixel**. E muita coisa afeta o tamanho de um CSS pixel, como por exemplo o [zoom do usuário](/media-queries-zoom/). Outro fator são [as telas retina e seus device pixel ratios](/resolucoes-dpi-pixel-ratio-retina/).

Resumindo: muita água pode rolar entre 599px e 600px na Web de hoje em dia. De volta a prancheta.

Lembramos então que as media queries têm uma keyword **not**. Parece fácil. Tentamos um `@media not (min-width: 600px)` e... bam, não funciona. Sintaxe inválida. Mas a ideia é essa mesmo, usar o **not**. A sintaxe final fica:

```
@media not all and (min-width: 600px) {}

/* negativa de @media (min-width: 600px){} */
```

Aqui é importante ressaltar o funcionamento do `not`. Ele nega a expressão inteira, por isso usei o `all and`. É como falar `not(all and (min-width:600px))`. O `all` é verdadeiro sempre então a lógica acaba ficando equivalente a `not(min-width:600px)`, justo o que queríamos.

---
layout: post
title: 'Media queries para resoluções diferentes e retina'
category: web
description: Media queries de resolução permitem carregar imagens e estilos diferentes em telas de resolução diferente ou retina. Conheça mais!
shareImage: /img/posts/media-queries/media-queries-resolucao-share.jpg
---

Muitas vezes, você vai querer carregar imagens e estilos diferentes em telas de resolução diferentes ou retina. Pra isso, você precisa de **media queries de resolução**.

Nesse artigo, discuto a forma correta de se atacar telas de alta resolução com CSS, as diferenças dos navegadores, que valores usar e algumas boas práticas. O resumo do artigo é que você deve usar uma **media query parecida com essa**:

```css 
@media (-webkit-min-device-pixel-ratio: 1.5),
       (min-resolution: 144dpi) {

}
```

Sim, eu sei que você provavelmente já viu ou usou uma [versão bem maior dessa media query](https://gist.github.com/4161897), cheia de prefixos de navegadores e valores estranhos. Pois bem, não use mais, o **correto para os browsers de hoje e do futuro** é essa aí de cima.

{% figure %}
media-queries/media-queries-resolucao.jpg
{% endfigure %}

## Porque essa media query pra telas retina?

*Antes de analisar a media query em si, é bom entender direito o que significam [DPIs, devicePixelRatio, retina e outros termos](/resolucoes-dpi-pixel-ratio-retina/).*

Muito tempo atrás, quando surgiram as primeiras telas com pixel ratio diferente de 1, o pessoal do WebKit criou uma media querie pra isso, a famosa `-webkit-device-pixel-ratio` (e suas versões com `min` e `max`). Alguns browsers chegaram a experimentar com isso, surgindo até a famosa aberração da Mozilla com `min--moz-device-pixel-ratio`.

Mas aí veio a [especificação oficial](http://www.w3.org/TR/css3-mediaqueries/#resolution) e revisaram essa media query, criando uma equivalente com um nome mais simples: `resolution`. Você pode escrever `min-resolution` e `max-resolution` e ela aceita várias medidas, sendo **dpi** e **dppx** as mais importantes.

Cuidado, porém, com os valores das medidas. Você já leu meu artigo sobre [resoluções, DPI e cia](/resolucoes-dpi-pixel-ratio-retina/) então lembra que os **browsers fixam a resolução lógica em 96dpi**, independente da resolução física. Então, quando escrevi **144dpi** na media query lá em cima, o que estava dizendo é que queria 1.5x o DPI padrão de 96, pegando então telas com *pixel ratio 1.5*, como vários aparelhos Android.

A medida **dppx** é nova no CSS e significa o mesmo que o *device pixel ratio*. Então, poderíamos escrever **1.5dppx** e seria equivalente a **144dpi**.

## Qual valor usar? Realmente preciso de imagens diferentes pra cada resolução?

No meu artigo sobre [device pixel ratio](/resolucoes-dpi-pixel-ratio-retina/), citei os valores que encontramos no mercado hoje:

* **0.75dppx** (= 72dpi) - Android low-end, tipo Galaxy 5.
* **1dppx** (= 96dpi) - Notebooks, desktops e vários celulares e tablets.
* **1.33dppx** (= 127dpi) - Nexus 7.
* **1.5dppx** (= 144dpi) - Vários Androids, como Atrix ou S2.
* **2dppx** (= 192dpi) - Telas retina da Apple, celulares e tablets mais modernos como S3.
* **3dppx** (= 288dpi) - Celulares ultra modernos, como Droid DNA e Galaxy S4.

Você pode escrever uma media query `resolution` pra cada um desses valores, servindo imagens adaptadas pra cada resolução. Pode até ser uma ideia se você for gerar tudo isso automaticamente (imagens e media queries), mas, na mão, fica inviável.

O que vejo muito comum de se fazer é **servir uma imagem em alta resolução para qualquer tela acima de 1dppx**. Você pode fazer algo como o pessoal do [WordPress](http://core.trac.wordpress.org/changeset/22629) que escolheu **120dpi** (= 1.25dppx) como valor inicial pra servir imagens retina.

Mas, veja se realmente vale a pena servir imagens diferentes só por causa do DPI. Isso vai ficar bastante complicado nos próximos anos. **Pra suportar bem todo tipo de tela, prefira usar texto, fontes, SVG e CSS.** Pra fotos, uma técnica que tem ficado popular são as [compressive images](http://filamentgroup.com/lab/rwd_img_compression/).

## E os browsers?

Todos os browsers modernos **suportam a media query `resolution`**, exceto o WebKit. Existem ainda alguns outros problemas, principalmente em dispositivos móveis. Alguns testes feitos em Janeiro/2013:

* **Firefox** e **Opera** no Desktop já suportam `resolution`.

* No **Webkit**, [já existe suporte](http://trac.webkit.org/changeset/132227) desde Outubro/2012 mas isso ainda não chegou no browsers finais. Por isso, usamos ainda a antiga `-webkit-device-pixel-ratio`, pensando no Chrome, Safari, Android e iOS.

* **Opera Mobile** suporta `resolution` nativamente no Android. Único defeito é que ele reporta pixel ratio 1 no meu Galaxy 5 de pixel ratio 0.75. Mas nos celulares com 1.5 e 2, tudo funciona perfeito.

* **Firefox no Android** só aceita a velha `-moz-device-pixel-ratio`, mas ele devolve sempre pixel ratio **1** e não suporta telas retina ainda. Isso é um [bug](https://bugzilla.mozilla.org/show_bug.cgi?id=803207) e, quando for consertado, fará a `resolution` funcionar, como no Firefox 18 pra Mac que já suporta o MacBook Retina.

* **Opera Mini** reporta sempre pixel ratio **1**, tanto no Android quando no iOS, mesmo em telas retina. O problema é que ele suporta a media query `resolution` cheia de bugs: se usar *dppx* ele aceita qualquer valor, e o `min-resolution` acha que o pixel ratio é 2. Conclusão: o suporte nele ainda é bem bugado, mas acrescentar `-o-device-pixel-ratio` não vai melhorar isso.

* **Internet Explorer** suporta `resolution` desde a versão 9 e nunca suportou `device-pixel-ratio`.

* Outros browsers que testei: *Dolphin Android Beta* e *UC Browser*. Em ambos, funciona `-webkit-device-pixel-ratio` mas eles sempre reportam **1**, mesmo em telas retina.

A conclusão de tudo isso é que precisamos ainda da `-webkit-device-pixel-ratio` mas já podemos usar a `resolution` pros outros browsers, sem prefixos. O ideal também é usar a unidade **dpi** e **não dppx**, já que o suporte nos browsers ainda é precário.

## A media query final 

Ta aí então a media query final pra suportarmos telas de alta resolução hoje e no futuro, sem problemas:

```css 
@media (-webkit-min-device-pixel-ratio: 1.25),
       (min-resolution: 120dpi) { 

}
```

<small><i>* Imagem que ilustra o post por <a href="http://www.flickr.com/photos/bcnbits/3244242527/" rel="nofollow">@bcnbits no Flickr</a>.</i></small>

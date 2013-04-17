---
layout: post
title: Media queries também ajudam na acessibilidade
date: 2013-01-30
category: web
description: "Sempre que alguém fala em medias queries, a primeira coisa que vem à cabeça é design responsivo e mobile. Mas elas ajudam também em acessibilidade."
shareImage: /img/posts/media-queries/media-queries-zoom-share.jpg
---

Sempre que alguém fala em [medias queries](http://blog.caelum.com.br/flexibilidade-em-paginas-para-dispositivos-moveis-com-media-queries/), a primeira coisa que vem à cabeça é *design responsivo* e *mobile*. Mas elas ajudam também em outro cenário: **acessibilidade**.

Aliás, é sempre bom lembrar que [acessibilidade não é só sobre usuários cegos](http://a11yproject.com/posts/myth-accessibility-is-blind-people/). Há várias categorias, incluindo os que enxergam mas com **dificuldade de ler texto pequeno**. Pode ser uma doença, pode ser uma pessoa mais idosa, ou até um usuário "comum" desconfortável com um texto pequeno.

<figure>
	<img src="img/posts/media-queries/media-queries-zoom.jpg">
</figure>

Pra isso, os navegadores têm a capacidade de **zoom nas páginas**. Eu mesmo, apesar de não ter nenhum problema na vista, uso direto: gosto de ler textos com pelo menos 18px de tamanho, então dou zoom em todas as páginas menores que isso. 

*E, só pra ficar claro, estou falando do que chamamos de [page zoom](http://trac.webkit.org/wiki/ScalesAndZooms), que aumenta tudo na página, usado geralmente no Desktop; não estou falando do gesto de [page scale](http://trac.webkit.org/wiki/ScalesAndZooms), comum no celular, que não afeta a renderização da página, só a visualização do usuário.*

Mas dar zoom na página tem um problema: se você aumentar muito, o **design do site pode quebrar**, principalmente medidas flexíveis como porcentagens e `em`, tão comuns em design responsivo.

<figure>
	<img src="img/posts/media-queries/zoom-quebrando.jpg" alt="Screenshot do blog com zoom de 200% quebrando o layout">
	<figcaption>Um zoom de 200% deixa o artigo do blog bem estranho. O texto fica grande mas apertado, e a foto fica grande demais sem necessidade.</figcaption>
</figure>

A parte mais curiosa é que o inimigo desse layout estranho é justo o design flexível. Se tivesse feito o **layout todo fixo em px**, o zoom iria aumentá-lo proporcionalmente e nada quebraria. O ruim só é que o usuário teria que dar scroll horizontal pra ver o site todo.

## Media queries ajudam no zoom

Mas a grande sacada é que as **media queries são aplicadas quando o usuário dá zoom**. 

Um zoom de 200%, na prática, faz 1px no CSS ser renderizado como 2px na tela. No fim, se você estiver em um notebook de 1280px de tela, a página passaria a renderizar com um *viewport* de 640px. *(aliás, há muita semelhança disso com meu post sobre [resoluções, pixel ratio e telas retina](/resolucoes-dpi-pixel-ratio-retina/).)* 

E a vantagem do viewport mudar de tamanho de acordo com o zoom é que as **media queries** são aplicadas de acordo com o viewport. Com isso, as suas media queries criadas originalmente para celulares e tablets começam a ser aplicadas para o usuário com zoom. Seu layout passa a se **adaptar corretamente** sem problema algum.

<figure>
	<img src="img/posts/media-queries/zoom-ok.jpg" alt="Screenshot do blog com zoom de 200% aplicando as media queries">
	<figcaption>Media queries ajustam o layout no Desktop com zoom de 200% como se estivesse num tablet pequeno. O design fica grande mas bem mais harmônico e proporcional.</figcaption>
</figure>

Todos os navegadores suportam esse tipo de recurso: Firefox, Chrome, Android, Opera, Internet Explorer e Safari. Só há um [bug no Webkit](https://bugs.webkit.org/show_bug.cgi?id=41063) -- Chrome, Safari, Android -- que faz a media query ser aplicada apenas se o usuário der zoom e depois um *refresh* na página; em todos os outros, a media query é aplicada imediatamente de acordo com o zoom.

Então, se você por acaso não gosta de [design responsivo](/responsive-web-design/) e ainda faz site Desktop e mobile separado, tá aí um motivo pra usar media queries mesmo assim: garantir acesso de pessoas com visão reduzida.

## Use media queries com 'em' por causa do Webkit

Aliás, falando em Webkit, há outra questão importante. Quando o zoom aumenta, o cálculo dos pixels não afeta as media queries. Isso quer dizer que, se você usou `(max-width: 960px)` no CSS, o Webkit não irá considerar metade desse valor quando o zoom estiver em 200%. Ele deveria fazer isso -- como todo os outros browsers fazem --, já que a media query é sobre o **tamanho do viewport e não o tamanho da janela**.

Mas o Webkit consegue reaplicar as media queries no zoom corretamente sim, apenas **precisamos declará-las com `em`**:

```css 
@media (max-width: 44em) { ... } /* equivalente a 704px */
@media (max-width: 37em) { ... } /* equivalente a 592px */
```

A conta é simples: é só usar como base o `font-size` em 16px e você chega no valor em `em`. Os browsers Webkit consideram que o `font-size` base muda conforme o zoom o que faz sua media query ser aplicada (depois de um refresh, por causa do bug que falei antes).

E não se engane: isso é um **bug do Safari/Chrome/Android e cia**. Usar media queries em `em` não deveria ser necessário para ganharmos acessibilidade no zoom. **Até o IE funciona direito!** Mas, com o Chrome se tornando o navegador mais usado no mundo e o Webkit dominando completamente o mundo mobile, é bom **fazer sempre suas media queries em `em`** pra evitar problemas. Pelo menos até corrigirem esse bug.

## Media queries de resolução aplicadas no zoom

Uma desvantagem pra quem usa o zoom do browser é que as **imagens costumam ficar pixeladas**. Ela fica menos definida, o que deixa a página feia e até com imagens piores pro deficiente visual entender.

Mas, você lembra que temos [media queries para lidar com resoluções diferentes](/media-queries-retina/)? Elas foram pensadas para serem aplicadas em aparelhos com pixel ratio diferentes (como celulares Retina), mas também **servem pra acessibilidade**.

Após um [longo debate no W3C](http://w3-org.9356.n7.nabble.com/Behavior-of-device-pixel-ratio-under-zoom-td6589.html), todos os navegadores concordaram que **alterar o zoom do navegador altera o devicePixelRatio** e, portanto, altera a forma como as media querie `resolution` são avaliadas.

Em outras palavras: se você serve uma imagem de alta resolução (2x) para telas retina, por exemplo, ela será usada quando o usuário der 200% de zoom na página. Excelente.

Por enquanto, agora em Janeiro/2013, apenas o Firefox implementou isso corretamente. Mas é questão de tempo até os outros navegadores implementarem.

## Uma nota sobre a falta de acessibilidade do iOS

O Safari Mobile no iOS não permite mudar o zoom padrão do navegador e ter uma página ajustável como mostrei nesse post. A única opção do usuário é usar o **gesto de page scale** com dois dedos no navegador (*pinch to zoom*) e ficar arrastando a tela de um lado pro outro pra conseguir ver a página toda.

E, claro, isso se o desenvolvedor do site não [desabilitou o zoom](/libere-zoom-nas-paginas-mobile/) -- coisa que você jamais deveria fazer. Nesse caso, a solução pro usuário é usar o recurso de **zoom nativo do sistema**, que envolve uma série de gestos estranhos e difíceis com 2 e 3 dedos.

## Outra nota, sobre zoom vs aumentar a fonte

Nesse post, falo do **zoom dos navegadores modernos**, que aumenta a página toda -- texto, imagens, CSS etc. Nos navegadores antigos -- como IE6 ou IE7 --, não existia isso e era comum o usuário **aumentar o tamanho da fonte**. Era bem mais simples: só o `font-size` base mudava e a página só aumentaria se você usasse `em` nas medidas CSS. 

Aliás, esse era um argumento forte a favor de `em` na época, mas hoje em dia os browsers dão zoom inclusive em medidas com `px` fixos.

<small><i>* Imagem que ilustra o post por <a href="http://www.flickr.com/photos/m4tik/47714548/" rel="nofollow">@m4tik no Flickr</a>.</i></small>

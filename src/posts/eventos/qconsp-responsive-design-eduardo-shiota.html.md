---
layout: post
title: "QCon SP 2012: anotações da palestra 'Responsive Web Design: conteúdo em todos devices' do Eduardo Shiota"
date: 2012-08-20
category: evento
description: Minhas anotações da palestra do Eduardo Shiota no evento QCon SP 2012
---

Eduardo Shiota ([blog](http://www.eshiota.com/), [twitter](https://twitter.com/shiota)) palestrou na track de **Front End** do evento [QCon SP 2012](http://www.qconsp.com/) sobre *Responsive Design* ([slides](http://www.slideshare.net/eshiota/responsive-web-design-e-a-ubiquidade-da-web)).

<figure>
	<img src="img/posts/qconsp2012/shiota.jpg">
	<figcaption>"Palestra do Eduardo Shiota no QCon SP 2012"</figcaption>
</figure>

## Minhas anotações

- A Web em 1996 (ex. [home do UOL na época](http://web.archive.org/web/19961223175947/http://uol.com.br/)) era sem muitas práticas de design.
- Mas design existe há centenas de anos, com grids, espaçamento, harmonia etc em impressos.
- Designer grafico sabe fazer design. Mas e na Web?
- A web começou a evoluir nas práticas de design a partir de 2000/2002. Mas o código ainda era ruim (table, font)
- Assim surgiu o CSS, com a separação semântica das tags e apresentação (ex. css zen garden)
- Passamos na Web e Frontend com diversos ciclos de melhoria, a próxima leva é o Mobile.
    * **HTML > Print > Table > Tableless > Standards > Mobile**


- Mobile aumenta o range de idades e tipos de pessoas acessando web e tecnologia
- Gama de dispositivos é gigantesca. Até Kindle e-ink acessa web.
- Fala-se muito de Apps, Appstore, mas isso limita o alcance. Muitas combinacoes de telas, dispositvos, hardware etc.
- O proximo passo do futuro da Web é Responsive Web Design
- Solução agnóstica à plataforma. Todo dispositivo acessa a web.
- Exemplo: entrada do UOL hoje.
	* [No Desktop fica bom](http://www.uol.com.br)
	* Num iPad começa a ficar meio complicado
	* Num iPhone, abre a [página mobile](http://m.uol.com.br).
	* Problema: mandar links da versão mobile e amigo abrir no Desktop, ele vai ver versão mobile
	* Temos aqui 2 aplicações com o mesmo propósito. Retrabalho
- Exemplo: [Boston Globe](http://www.bostonglobe.com)
	* Responsável foi o Ethan Marcotte, pai do Responsive Design
	* Mesma página, adaptada pra todo tipo de resolução desde Desktop até smartphones pequenos.


- Com CSS, JS, técnica e planejamento conseguimos uma versão que funcione em todas as páginas.
- Como fazer responsivo? 3 partes
	* Design flexivel
	* Media Queries
	* Ajusts e plugins
- Design flexivel
	* Tipografia, grid e conteudo
	* Golden rule: target/contexto=dimensão
	* usar `em` sempre
- Coloque font-size:100% sempre no body. 16px na maioria dos browsers
	* Se o usuário mudou, todo o layout se adapta.
	* Seta `line-height` unitless pra ser proporcional ao `font-size`.
- Fazer as contas da golden rule e vai dar uns numeros bizarros. Mas muita gente tem partido pra design no browser ao inves do Photoshop. Ai usa valores mais redondos.
- Coloque num comentario a conta que foi feita pra chegar no valor em.


- Grids: mesma coisa, fazer tudo proporcionalmente, com porcentagens.
- Coloque `max-width:100%` nos componentes: img, embed, object, video
- Shiota recomenda [box-sizing:border-box](/css-box-sizing-border-box/) também.
- Plugin FitVids pra videos e iframes redimensionarem e plugin FitText pra ajustar texto responsivo de título.
- Media queries: começou com @media print lá atrás e hoje tem muitos outros
- 2 jeitos de usar:
	* <link rel="stylesheet" href="estilo.css" media="(max-width: 700px)">
	* ou direto no CSS: @media (max-width: 320px) { }
- Device pixel ratio: razão de pixels virtuais com relação a pixels físicos
- Numa tela retina, cada 1x1 pixel virtual é 2x2 pixel fisico
- A imagem pro retina vai ser o dobro de tamanho em cada dimensão
	* colocamos numa media querie min-device-pixel-ratio:2
	* Usa `background-size: 50% 50%` pra escalar os pixels virtuais em 0.5
- Responsive Images
	* carregas imagens diferentes pra cada breakpoint
	* Shiota recomenda o polyfill de <picture> feita pelo Scott Jehl: picturefill
	* há outros plugins JavaScript, outros com servidor, outros misturados
- Mas nada disso funciona antes do IE9
	* há plugins como Respond.js. mas só tem max/min-width/height 
	* há o css3-mediaqueries.js

## Meus comentários

Quem acompanha o blog sabe que sou praticante do [design responsivo](/responsive-web-design/) então essa palestra do Shiota me interessou bastante. Foi uma boa apresentação para introduzir o tema pra quem ainda não conhecia.

Em particular, gostei bastante de ver como pensamos parecido em temas polêmicos, como usar [box-sizing:border-box](/css-box-sizing-border-box/), preferir ems sempre e fazer breakpoints nas media queries de acordo com o design e não com dispositivos específicos.

Pra mim, um ponto interessante foi a timeline da história do design na web que ele apresentou no início. Em especial, a conclusão sobre como as coisas evoluíram nos últimos tempos: **HTML > Print > Table > Tableless > Standards > Mobile**.

## Outras palestras da track de Front End do QCon SP 2012

Tem a [minha palestra sobre mobile web](/palestra-mobile-web/), incluindo slides, anotações, referências e demos. O evento teve muitas palestras de vários temas. Anotei aqui apenas as da trilha de Front End que assisti:

* [Modular CSS: projetando CSS para aplicativos](/qconsp-modular-css-bernard-de-luna/), com Bernard De Luna
* [HTML5 Offline & Storage: Soluções para um mundo sem conexão permanente](/qconsp-html5-offline-storage-gabriel-oliveira/), com Gabriel Oliveira
* [Mitos do Front end](/qconsp-mitos-frontend-zeno-rocha/), com Zeno Rocha


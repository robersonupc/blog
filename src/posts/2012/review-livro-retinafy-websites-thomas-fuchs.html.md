---
layout: post
title: 'Review do livro "Retinafy your web sites & apps" do Thomas Fuchs'
date: 2012-10-10
category: review
description: Um livro focado em como pensar em telas retina, otimizar imagens e CSS. Leia o meu review.
shareImage: /img/posts/retinafy-websites/retinafy-websites-share.png
---

É capaz de você estar fazendo a mesma pergunta que me fiz antes de ler esse livro: sério, um livro **só** sobre como lidar com **telas retina** na Web? Sim, e o livro é **fantástico**.

O [Retinafy.me](http://retinafy.me/ Livro Retinafy web sites and apps) é um ebook curto, um PDF -- sem DRM -- de apenas 60 páginas. É publicado diretamente pelo autor, o [Thomas Fuchs](http://mir.aculo.us/), e tem um preço meio salgado -- 29 dólares. Mas tem **dicas fenomenais** sobre como lidar com telas de alta resolução, tão comuns em tablets e celulares, e que agora começam a chegar aos notebooks e desktops. Valeu cada centavo (*ok, comprei no beta ainda, por 19 dólares, mas ainda é um valor alto*).

O livro é bastante direto e prático, curto e grosso com as dicas de imagens, CSS, HTML e JS pra você suportar telas retina. É fruto do muito estudo feito pelo Thomas e apresenta as conclusões dele pra que você não precise pesquisar tudo de novo por conta própria. E o Thomas não é um cara qualquer; é o autor do Zepto.js, do script.aculo.us, commiter do Rails e de mais um monte de coisa importante.

<figure>
	<img src="/img/posts/retinafy-websites/retinafy-websites-cover.png">
	<figcaption>"Livro Retinafy Web Sites and Apps de Thomas Fuchs."</figcaption>
</figure>

## JPEG gigante com qualidade baixa

Pra mim, o maior insight desse livro é a ideia de usar um **JPEG gigante com qualidade mais baixa**. Como os pixels em telas retina são muito pequenos, a qualidade visual fica boa. E, nas telas normais, o downscale do browser faz a diferença de qualidade ficar imperceptível. É uma sacada genial. No fim, em muitos casos, o arquivo JPEG fica até com tamanho menor -- um JPEG com o dobro de largura mas qualidade 30 em geral é menor que um JPEG com metade da largura e qualidade 80.

No livro, ele mostra [vários exemplos](http://retinafy.me/jpgs/). E, depois do livro, mais gente está falando dessa técnica com ainda [mais exemplos](http://blog.netvlies.nl/design-interactie/retina-revolution/) comprovando a eficiência da técnica.

## Retina first e sem malabarismos

No livro, o autor defende a ideia de criarmos sites retina desde já. No futuro, só teremos displays retina, e é bom estar preparado. Isso significa criar as imagens **@2x** pra tudo no site que não for vetorizável -- texto, CSS3, icon fonts e SVG. E, para o autor, na maioria das vezes, você não precisa do trabalho de criar uma versão **@1x** e do monte de CSS e gambiarras de JavaScript para trocá-las.

Eu concordo completamente com essa técnica. Meu fluxo hoje de desenvolvimento pensando em mobile e telas retina é de migrar o máximo possível pra CSS3 e icon fonts, depois usar SVG, e por último um JPG, PNG ou GIF já exportado com dobro de resolução. Aí uso o `background-size` pra adaptar a imagem no CSS e pronto. Não crio várias versões do mesmo arquivo.

A principal preocupação costuma ser **performance**, já que o arquivo vai ter o quádruplo de pixels -- e quem me segue sabe que sou **bem** [preocupado com performance](/tweetables-performance-web-otimizacoes/). Para fotos JPG, a técnica anterior de diminuir a qualidade é fantástica e eficiente. Para PNGs e gráficos, em geral, a diferença de tamanho não é significativa. E, mesmo que tenha uns KBs a mais, sou da opinião de que o maior gargalo de rede hoje quando falamos de Web é a latência de rede, e não tanto a banda. 

Meu único receio de performance é com relação ao uso de memória do browser, que aumenta. De qualquer forma, tudo isso é melhor, mesmo, que usar bibliotecas JavaScript pra ficar trocando imagens. Essa bibliotecas são péssimas pra performance e grandes gambiarras.

## Citações do livro

Na minha leitura, separei algumas citações de pontos que me marcaram. Mas, lembre, há muito mais no livro, com códigos, exemplos práticos, dicas etc.

> Always target high-density displays by default, don’t make it an afterthought.

<!---->
> For many types of graphics you can just provide a single image—the "retina" version, and rely on the browser to scale down a larger image.

<!---->
> Some images might require special casing, for example an icon or small text rendered on a user interface element might get blurry at smaller sizes.

<!---->
> [To support two image variants] don’t use <img> tags directly, but instead just use <div> elements with a background image and "background-size" property of "100%".

<!---->
> For [JPEG] content images, double the resolution but lower the quality. Don’t bother with two versions.

<!---->
> It’s better to think "retina-first", and assume you’re running on a retina screen and make exceptions or adaptions for "normal" screens, as high-density displays will soon be the norm rather than a special thing (and they are the norm on mobile devices already!).

<!---->
> Don’t use JavaScript "retina" helper libraries.


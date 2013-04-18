---
layout: post
title: 'Sempre libere o zoom do usuário em suas páginas mobile'
date: 2012-12-30
category: mobile
description: Nunca proíba o usuário de dar zoom nas páginas. É péssima usabilidade.
originalDate: 2012-07-20
version: 2
---

As telas pequenas dos smartphones ensinaram algo simples para os usuários: se algo estiver pequeno, apenas arraste os dedos (pinch) e **dê zoom**! É um gesto básico de dispositivos touch e conhecido por todo mundo. Mas, mesmo assim, muitos sites bloqueiam o zoom nas páginas. **Não faça isso**.

Se você trabalha com web mobile, conhece a [meta tag viewport](http://blog.caelum.com.br/pixels-pixels-ou-pixels-dicas-de-web-mobile-com-viewport/) e sua importância. Com ela, você consegue bloquear o zoom do usuário de algumas formas:

```html 
<meta name="viewport" content="width=device-width, user-scalable=no">

<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
```

Mas, na esmagadora maioria dos casos, você não deveria fazer isso. Exceções talvez sejam webapps com uma ideia de canvas fullscreen onde os gestos são tratados pela aplicação (mapas e jogos talvez). Em sites web normais? *Jamais*.

Há um mito que circula por aí de que limitar o zoom faz com que nossa página fique mais parecida com uma *App*. Primeiro: site não é App, então não tente parecer uma. Segundo: se algumas Apps têm essa *limitação* de não deixar dar zoom, porque copiar essa *deficiência* pra sua página?

## Mas meu iPhone <del>dá</del>dava zoom quando deito o aparelho!

Eu acho que o grande culpado da proliferação de páginas com zoom desabilitado é um famoso **bug no iOS** até a versão 5.x que faz com que a página dê um zoom quando você gira o aparelho em modo paisagem. Se você desabilita o zoom, o bug não acontece. Mas é um jeito covarde de resolver o problema.

O **iOS 6** resolve esse bug do Mobile Safari. E como a maioria dos usuários Apple atualiza rapidamente, isso quer dizer que esse bug deve ser coisa do passado em breve.

Mas mesmo que o bug do iOS seja um problema pra você e seus usuários com iOS antes do 6, pense em alguma opção:

* **Não faça nada**. Sim, uma opção é deixar o bug acontecer. Lembre que um usuário de iOS está *acostumado* a isso, afinal todos os sites do mundo são afetados! E a maioria dos usuários com iOS 6+ está ok.
* Se incomodar muito e você quiser tirar o zoom do usuário por causa do bug, pelo menos faça isso **apenas no iOS** e não limite todos os outros dispositivos do mundo que funcionam direito. Lembre que, principalmente no Brasil, o Android é muito mais usado que o iOS (às vezes, até em audiências mais nerds como nós).
* Há **hacks em JavaScript** que solucionam o problema em 99% dos cenários. O mais famoso é o [do Scott Jehl](https://github.com/scottjehl/iOS-Orientationchange-Fix) mas há outros - até eu tenho [uma solução](https://github.com/sergiolopes/ios-zoom-bug-fix), baseada em CSS. Veja um [comparativo de hacks](https://github.com/sergiolopes/ios-zoom-bug-fix#other-solutions) que resolvem o bug.

## Controle na mão do usuário!

Desabilitar o zoom das páginas é tão irritante, mas tão irritante, que os browsers mobile modernos estão deixando esse controle na mão do usuário! O browser do **Android 4 e o Chrome Mobile**, por exemplo, têm essa opção nas configurações:

<figure>
	<img src="/img/posts/mobile-user-zoom/android4.png" alt="Screenshot com configurações de zoom do Android 4">
	<img src="/img/posts/mobile-user-zoom/chrome.png" alt="Screenshot com configurações de zoom do Chrome Mobile">
</figure>

O Mobile Safari do iOS infelizmente ainda não tem uma opcão dessas. Também não consegui achar no Opera e no Firefox uma opção semelhante. Uma gambiarra útil pra usuários dessas plataformas, é usar um **bookmarklet que reescreva a tag viewport** dos sites pra habilitar o zoom sempre:

```javascript 
javascript:document.querySelector('meta[name=viewport]').setAttribute('content','width=device-width,initial-scale=1,maximum-scale=10,user-zoom=yes');
```

---

**Atualização Dez/2012**: coloquei informações sobre o iOS 6 e o bug que não existe mais.

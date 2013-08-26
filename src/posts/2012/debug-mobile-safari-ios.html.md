---
layout: post
title: Script para debugar o Mobile Safari do iOS no Desktop
date: 2013-08-26
version: 2
originalDate: 2012-03-21
category: mobile

description: Use o debugger do WebKit/Safari no seu Desktop para inspecionar página rodando no emulador do iOS.
---

A partir do **iOS 5**, é possível fazer *remote debug* de qualquer aba aberta no Mobile Safari, através do famoso *Inspector* do WebKit no Desktop enquanto se navega no celular/emulador.

Se você tiver iOS 6 em diante, o processo é extremamente simples, bastando ter o Safari mais recente instalado no Mac. Antes, você precisa habilitar essa função no seu aparelho (ou no emulador). Vá em **Ajustes > Safari > Avançado** e marque a opção **Inspetor Web**:

<figure>
	<img src="/img/posts/debug-mobile-safari-ios/enable-ios6.png" alt="Ajustes, Safari, Avançado e marque a opção Inspetor Web">
	<figcaption>Como habilitar o debug remoto no iOS 6</figcaption>
</figure>

Agora abra o Safari no Mac e vá nas **Preferências > Avançado** e marque a opção para mostrar o menu **Develop** no menu. Por fim, basta conectar o cabo USB no aparelho e no computador (ou só abrir o emulador). Para abrir o inspetor, vá no Safari do Desktop em **Develop** e deve aparecer seu aparelho/emulador listado, dando acesso a todas as abas abertas.

<figure>
	<img src="/img/posts/debug-mobile-safari-ios/debug-ios6.png" alt="Develop, iPhone Simulator, abas">
	<figcaption>Debugando meu blog no emulador do iOS pelo Safari do Mac</figcaption>
</figure>

*(tenho também um post sobre [debug remoto no Chrome Mobile do Android](/remote-debug-chrome-mobile/))*

## iOS 5

No iOS 5, o debug já existe mas é um pouco mais complicado, exigindo comandos mais complexos.

Criei então um script bash que abre o emulador do iOS 5 e conecta o debugger nele via Safari. É bastante útil pra desenvolvimento Web mobile. Basta rodar o script no Mac após ter instalado o **XCode** mais novo que inclui o emulador do iOS 5.

Após rodar no terminal, abra o Mobile Safari dentro do emulador e navegue até a página que quer debugar. Depois, volte ao terminal e dê *enter* para o script continuar e capturar o debug. Ele vai abrir o Safari no seu Desktop com o *Web Inspector*.

```bash 
#!/bin/bash

# Open iPhone Simulator on default location for XCode 4.3
open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app

# Open mobile safari
echo Open mobile safari on emulator and press return
read

# Plug debug to MobileSafari.app
echo Debugging
MobileSafari_PID=$(ps x | grep "MobileSafari" | grep -v grep | awk '{ print $1 }')

if [ "$MobileSafari_PID" == "" ]; then
  echo "Mobile Safari.app must be running in the Simulator to enable the remote inspector."
  exit
else
  
  cat <<EOM | gdb -quiet > /dev/null
  attach $MobileSafari_PID
  p (void *)[WebView _enableRemoteInspector]
  detach
EOM
fi

# Open debugger in Safari.app
open -a /Applications/Safari.app http://localhost:9999
```

<figure>
	<img src="/img/posts/debug-mobile-safari-ios/mobile-safari-iphone.png" alt="iPhone no emulador">
	<img src="/img/posts/debug-mobile-safari-ios/debug-safari.png" alt="Safari com inspector aberto">
	<figcaption>Debugando o sergiolopes.org no Mobile Safari do emulador</figcaption>
</figure>

Há também um [gist](https://gist.github.com/1961630) disponível com esse código. O código do **gdb** eu peguei nesse [post aqui](http://atnan.com/blog/2011/11/17/enabling-remote-debugging-via-private-apis-in-mobile-safari/) -- lá você também vê como conectar o debug a um aparelho real com iOS, além do emulador.

Se você precisa debugar uma versão mais antiga do iOS ou não tem um Mac a disposição, recomendo testar as ferramentas [Adobe Edge Inspect](http://html.adobe.com/edge/inspect/) e [Weinre](https://people.apache.org/~pmuellr/weinre/docs/latest/).

----

**Atualização Ago/2013**: Adicionei informações sobre iOS 6.

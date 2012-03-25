---
layout: post
title: Script para debugar o Mobile Safari do iOS no Desktop
category: mobile

description: Use o debugger do WebKit/Safari no seu Desktop para inspecionar página rodando no emulador do iOS.
---

A partir do **iOS 5**, é possível fazer *remote debug* de qualquer aba aberta no Mobile Safari, através do famoso *Inspector* do Webkit no Desktop enquanto se navega no celular/emulador.

Criei então um script bash que abre o emulador do iOS 5 e conecta o debugger nele via Safari. É bastante útil pra desenvolvimento Web mobile. Basta rodar o script no Mac após ter instalado o **XCode** mais novo que inclui o emulador do iOS 5.

Após rodar no terminal, abra o Mobile Safari dentro do emulador e navegue até a página que quer debugar. Depois, volte ao terminal e dê *enter* para o script continuar e capturar o debug. Ele vai abrir o Safari no seu Desktop com o *Web Inspector*.

{% code bash %}

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

{% endcode %}

{% figure Debugando o sergiolopes.org no Mobile Safari do emulador %}
	debug-mobile-safari-ios/mobile-safari-iphone.png 	iPhone no emulador
	debug-mobile-safari-ios/debug-safari.png 	Safari com inspector aberto
{% endfigure %}

Há também um [gist](https://gist.github.com/1961630) disponível com esse código. O código do **gdb** eu peguei nesse [post aqui](http://atnan.com/blog/2011/11/17/enabling-remote-debugging-via-private-apis-in-mobile-safari/) -- lá você também vê como conectar o debug a um aparelho real com iOS, além do emulador.

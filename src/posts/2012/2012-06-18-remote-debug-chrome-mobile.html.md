---
layout: post
title: Como debugar remotamente uma página no Chrome Mobile do Android
category: mobile

description: Use o debugger do Chrome no seu Desktop para inspecionar página rodando no Chrome Mobile do Android.
---

O desenvolvimento de página web mobile é difícil de testar por envolver outros aparelhos. Mas os browsers mais novos já possuem recurso de debug remoto. Além do [iOS](/debug-mobile-safari-ios/ 'Meu post sobre remote debug no iOS 5'), o **Chrome Mobile** também traz esse recurso.

Embora ainda não haja suporte nativo para debug do browser padrão do Android, o suporte no Chrome é muito bom. Ele apenas para *Android 4* e já foi anunciado como futuro substituto do browser padrão do Android.

*(eu já escrevi aqui no blog também como debugar páginas no [Mobile Safari do iOS 5+](/debug-mobile-safari-ios/ 'Meu post sobre remote debug no iOS 5'))*

## Pré-requisitos

* Instale o [Chrome Mobile](https://play.google.com/store/apps/details?id=com.android.chrome) no seu Android 4.
* Baixe o [Android SDK](http://developer.android.com/sdk/index.html) pra sua máquina.
* Instale o [Google Chrome](http://www.google.com/chrome) no seu Desktop.
* Tenha um cabo USB à mão pra conectar o dispositivo no computador.

## Configurações no celular

* Vá nas **Configurações de sistema** do Android e entre em **Opções do Desenvolvedor**.
* Lá, habilite a opção **Depuração USB**:
  {% figure %}
	debug-chrome-mobile/debug-usb.png 	Habilite depuração de USB.
  {% endfigure %}
* Abra o **Chrome Mobile** no celular e vá em suas **Configurações**.
* Entre no menu **Ferramentas para desenvolvedores** lá no final.
* Lá, habilite a opção **Ativar a depuração da web via USB**
  {% figure %}
	debug-chrome-mobile/debug-web.png 	Habilite depuração da web via USB.
  {% endfigure %}

## Debug do celular via Desktop

* Plugue o celular no computador usando o cabo USB.
* No terminal, entre na pasta que você instalou o *Android SDK* e em **platform-tools**.
* *(opcional)* Rode o *ADB* pra listar os dispositivos e ver se seu celular foi reconhecido:
  `./adb devices`
* Se não for reconhecido, verifique se a depuração USB está habilitada e tente plugá-lo novamente.
* Ainda usando o ADB, rode o comando que habilita o debug remoto no Chrome:
  `./adb forward tcp:9222 localabstract:chrome_devtools_remote`
* Por fim, basta ir no seu Chrome Desktop e abrir o endereço **http://localhost:9222**.
* Todas as abas abertas no celular serão listadas. Selecione uma para debugar:
  {% figure %}
	debug-chrome-mobile/pages.png 	Escolha uma das abas abertas para debugar.
  {% endfigure %}
* O **Web Inspector** será aberto no seu Chrome no Desktop mas linkado com o Chrome no celular. Você pode debugar normalmente e fazer alterações e vê-las em tempo real no aparelho:

{% figure Debugando uma página do celular no Desktop %}
	debug-chrome-mobile/web-inspector.png 	O Web Inspector aberto no Chrome Desktop.
	debug-chrome-mobile/remote-debug.jpg 	A página no Chrome Mobile sendo alterada em real-time.
{% endfigure %}

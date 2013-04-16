---
layout: post
title: Visualize em 3D a complexidade da sua página no Firefox Tilt
category: web

description: Visualize a hierarquia dos elementos no novo web inspector do Firefox 11
---

Você já está acostumado a inspecionar suas páginas no **Firebug** ou no **Web Inspector**, mas aposto que não em **3D**! O Firefox 11 traz o novo *inspector* 3D chamado **Tilt** que mostra os elementos da sua página hierarquicamente numa bela visualização em três dimensões.

A ferramenta já existia antes na forma de uma extensão beta. Mas agora está incorporada ao **Firefox 11**. Para acessá-la, basta abrir o *inspector* e clicar no botão **3D** -- o *inspector* no Firefox fica em *Tools* > *Web Developer* > *Inspect*.

{% figure Google.com no Tilt %}
	firefox-tilt/googlecom.png 	Google.com no Tilt
{% endfigure %}

Ainda estou tentando achar cenários realmente úteis pra ferramenta, mas pelo menos **ela é divertida**. Ela serve como indicativo, por exemplo, de um markup complexo demais. Ao rodar na [página da Caelum](http://www.caelum.com.br) não fiquei surpreso ao ver dois picos de complexidade exatamente onde ficam **os widgets do Facebook**:

{% figure Caelum.com.br no Tilt %}
	firefox-tilt/caelumcombr.png 	Caelum.com.br no Tilt
{% endfigure %}

Com um markup estranho desses, não é de se estranhar que esses widgets sejam **extremamente lentos** -- vilões famosos do pessoal de *web performance*.

E dá pra fazer mais brincadeiras no Tilt. Como ele roda num **canvas infinito de WebGL**, ele não tem as mesmas restrições de tamanho do *viewport* tradicional do navegador. O que isso quer dizer? **Dá pra ver todos aqueles hacks de posicionar elementos fora da tela**, como esse pedaço do menu no [site da Mozilla](http://mozilla.org) sobrando no topo da página:

{% figure Rabicó do menu da Mozilla saindo pra fora da página: visível no Tilt! %}
	firefox-tilt/mozillaorg.png 	Mozilla.org no Tilt
{% endfigure %}

Ou ainda observar sua página em **ângulos inusitados**:

{% figure Toda a verdade por trás do UOL %}
	firefox-tilt/uolcombr.png 	Uol.com.br por trás
{% endfigure %}

Baixa lá então o Firefox mais novo e testa o Tilt. E se conseguir pensar em cenários úteis pra usá-lo, me conta aí nos comentários.

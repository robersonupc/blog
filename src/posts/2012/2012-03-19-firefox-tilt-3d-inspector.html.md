---
layout: post
title: Visualize em 3D a complexidade da sua página no Firefox Tilt
category: web

description: Visualize a hierarquia dos elementos no novo web inspector do Firefox 11
---

Você já está acostumado a inspecionar suas páginas no **Firebug** ou no **Web Inspector**, mas aposto que não em **3D**! O Firefox 11 traz o novo *inspector* 3D chamado **Tilt** que mostra os elementos da sua página hierarquicamente numa bela visualização em três dimensões.

A ferramenta já existia antes na forma de uma extensão beta. Mas agora está incorporada ao **Firefox 11**. Para acessá-la, basta abrir o *inspector* e clicar no botão **3D** -- o *inspector* no Firefox fica em *Tools* > *Web Developer* > *Inspect*.

<figure>
	<img src="img/posts/\2" alt="\3">
	<figcaption>\1</figcaption>
</figure>

\{\% figure (.*) \%\}
\s*([^ ]+)\s*(.+)
\{\% endfigure \%\}

<figure>
	<img src="img/posts/firefox-tilt/googlecom.png" alt="Google.com no Tilt">
	<figcaption>Google.com no Tilt</figcaption>
</figure>

Ainda estou tentando achar cenários realmente úteis pra ferramenta, mas pelo menos **ela é divertida**. Ela serve como indicativo, por exemplo, de um markup complexo demais. Ao rodar na [página da Caelum](http://www.caelum.com.br) não fiquei surpreso ao ver dois picos de complexidade exatamente onde ficam **os widgets do Facebook**:

<figure>
	<img src="img/posts/firefox-tilt/caelumcombr.png" alt="Caelum.com.br no Tilt">
	<figcaption>Caelum.com.br no Tilt</figcaption>
</figure>

Com um markup estranho desses, não é de se estranhar que esses widgets sejam **extremamente lentos** -- vilões famosos do pessoal de *web performance*.

E dá pra fazer mais brincadeiras no Tilt. Como ele roda num **canvas infinito de WebGL**, ele não tem as mesmas restrições de tamanho do *viewport* tradicional do navegador. O que isso quer dizer? **Dá pra ver todos aqueles hacks de posicionar elementos fora da tela**, como esse pedaço do menu no [site da Mozilla](http://mozilla.org) sobrando no topo da página:

<figure>
	<img src="img/posts/firefox-tilt/mozillaorg.png" alt="Mozilla.org no Tilt">
	<figcaption>Rabicó do menu da Mozilla saindo pra fora da página: visível no Tilt!</figcaption>
</figure>

Ou ainda observar sua página em **ângulos inusitados**:

<figure>
	<img src="img/posts/firefox-tilt/uolcombr.png" alt="Uol.com.br por trás">
	<figcaption>Toda a verdade por trás do UOL</figcaption>
</figure>

Baixa lá então o Firefox mais novo e testa o Tilt. E se conseguir pensar em cenários úteis pra usá-lo, me conta aí nos comentários.

---
layout: post
title: "QCon SP 2012: anotações da palestra 'HTML5 Offline & Storage' do Gabriel Oliveira"
category: evento
description: Minhas anotações da palestra do Gabriel Oliveira no evento QCon SP 2012
---

Gabriel Oliveira ([twitter](https://twitter.com/gabaiel)), da [Caelum](http://www.caelum.com.br/), palestrou na track de **Front End** do evento [QCon SP 2012](http://www.qconsp.com/) sobre técnicas de offline storage com o título *HTML5 Offline & Storage: soluções para um mundo sem conexão permanente* ([slides](http://www.slideshare.net/gabrielso/html5-offline-storage)).

{% figure "Palestra do Gabriel Oliveira no QCon SP 2012" %}
	qconsp2012/gabriel.jpg
{% endfigure %}

### Minhas anotações

- Web é plataforma pra aplicações distribuídas
- Normal: fazer cache de componentes com Expires no HTTP cache
- Mas sem HTTP, sem cache HTTP. Não da pra fazer verificação sem ter rede.
- Offline Storage
	* Armazenar no cliente mas permite obter os dados sem conexão ativa
	* Caso util em mobile webapps, ou hibridas
	* evita full http roundtrips
	* menor consumo de banda
- HTML5 AppCache (Offline)
	* quais recursos devem ser armazenados
	* quais não devem ser armazenados. coisas que so funcionam com conexao
	* ou recursos alternativos caso esteja offline
- Um arquivo manifest texto plano com CACHE MANIFEST
- posso fazer cache de coisas relativas e outros dominios
- cuidado com param da URL que o cache considera recursos diferentes
- cuidado com mime type correto senão ele ignora o cache
- Algum recurso devolveu 404? Nada vai para o cache!
- O offline cache traz todos os recursos de uma vez, mesmo que não use no momento
- Mudar o manifest indica pro navegador que um novo cache precisa ser construído
	* Faça isso com JavaScript: applicationCache.onupdateready
	* Mostre uma mensagem pro usuário recarregar a página
- Não deixe o navegador fazer HTTP cache do Manifest, senão não consigo fazer mais updates
- Eventos de online e offline
	* evento que dispara quando muda o status da conexão
	   window.ononline ou onoffline
	* faz sincronizacao no online por exemplo
- localStorage
	* dados no cliente, como cookies, mas sem limitações
	* nao sao enviados pro server, como cookies
	* key value, dados nao estruturados
	* same origin restrito
- usuário pode descartar dados indo nas configs do browser
- sessionStorage é igual o local mas só na sessão atual (fechar browser; em alguns, so fechar aba)
- IndexedDB
	* dados estruturados
	* assincrono e transacional
	* schemaless nosql
- criamos um object store (tipo tabela)
- insere objetos JS
- posso juntar com offline. usar indexeddb pra salvar coisas locais e depois sincronizar.
	* cuidado so com monte de coisa assincrona junta (indexeddb, ajax)
- No mobile, pessoal prefere WebSQL que é mais leve.
- Limitações de espaço:
	* appcache: indeterminado mas se recomenda no maximo 10% do espaco em disco
	* localStorage e session: 5MB minimo
	* IndexedDB: Indeterminado

### Meus comentários

As soluções para offline melhoraram muito com o HTML5. E isso é essencial para o mundo mobile dos smartphones e tablets que nem sempre têm conexão disponível. Eu mesmo, na minha [palestra do QCon](/palestra-mobile-web/) fiz os participantes abrirem umas demonstrações no celular, e usei HTML5 offline pra evitar problemas com intermitência de rede durante a palestra.

Ainda acho o o AppCache um tanto obscuro e complicado. Ele é muito voltado pra WebApps single-page cheias de JS. Infelizmente não é uma solução fácil de se aplicar na Web em geral. E me incomoda o fato de não ter uma forma de habilitar ou desabilitar o offline de acordo com desejo do usuário - imagine o usuário lendo uma notícia e apertando um botão "salvar offline".

A palestra em si foi muito boa e preencheu alguns buracos no meu conhecimento sobre essas tecnologias. Recomendo ver os [slides](http://www.slideshare.net/gabrielso/html5-offline-storage) pra acompanhar os códigos mostrados.

## Outras palestras da track de Front End do QCon SP 2012

Tem a [minha palestra sobre mobile web](/palestra-mobile-web/), incluindo slides, anotações, referências e demos. O evento teve muitas palestras de vários temas. Anotei aqui apenas as da trilha de Front End que assisti:

* [Reponsive Design e a Ubiquidade da Web](/qconsp-responsive-design-eduardo-shiota/), com Eduardo Shiota
* [Modular CSS: projetando CSS para aplicativos](/qconsp-modular-css-bernard-de-luna/), com Bernard De Luna
* [Mitos do Front end](/qconsp-mitos-frontend-zeno-rocha/), com Zeno Rocha


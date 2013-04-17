---
layout: post
title: "Front In BH 2012: anotações da palestra 'Amazon EC2 e CDN no Peixe Urbano' do Alexandre Tabor"
date: 2012-07-17
category: evento
description: Minhas anotações da palestra do Alexandre Tabor no evento Front in BH 2012
---

Alexandre Tabor, CTO do Peixe Urbano, palestrou no evento [Front In BH 2012](http://www.frontinbh.com.br/) sobre o uso da Amazon EC2, cloud e truques de CDN no Peixe Urbano.

<figure>
	<img src="img/posts/frontinbh2012/tabor.jpg">
	<figcaption>"Palestra do Alexandre Tabor no Front In BH 2012"</figcaption>
</figure>

## Minhas anotações

* Pioneiro em compras coletivas, 20 milhões de usuários hoje, 1.5 bilhão de reais economizados em promoções.
* Peixe Urbano não foi o primeiro serviço deles. Lançaram outro e não deu certo, foram pra compras coletivas.
* Começo era lean, MVP. Testa ideias e tira do ar as que não dão certo. Hoje já tem mais sites.
* Primeiro site era um teste, não foi codado muito robustamente.
* E foi essencial algo barato pra testar. Usaram Amazon EC2 como plataforma.
* Modelo de negócios gera picos (promoções chamativas tem maiores usuários). Usar cloud traz custos elásticos.
* Tinham problema grande de latência por usar data center da Amazon na Virgínia.
* Mediram tempo de 180ms de latência da Amazon pro Rio de Janeiro.
* Começaram a usar CDNs pra distribuição geográfica. Mas tinham problemas de que cada provedor de acesso ia pra um lugar. Alguns usavam servidor americano mesmo tendo no Brasil.
* Quando Amazon abriu em SP, decidiram não migrar pra cá pra economizar e por causa dos outros países do peixe urbano.
* Montaram então um cache na Amazon São Paulo com Squid.
* Usaram domínio secundário pra evitar cookies. A aplicação reescreve as URLs pro CDN.
* Montaram serviço de redimensionar as imagens dinamicamente e cachear no squid.
* Próximos passos:
	* Mudar site pra estático e usar Ajax pra coisas dinâmicas.
	* Implementar outras otimizações: gzip no squid, fingerprint nas URLs, minificação de JS e CSS
	* Configurar proxies nos outros países do peixe urbano.

## Meus comentários

Foram muitas histórias sobre o Peixe Urbano, como abriram a empresa, como ela cresceu e seus desafios. Já tinha ouvido alguns no QCon SP 2011 mas ouvi novas histórias agora. O Peixe Urbano é um excelente case da Amazon AWS e seus gráficos mostram como a elasticidade do cloud é fundamental pro modelo de negócios deles. Não sou muito fã de IaaS - sou mais PaaS e SaaS -, mas é certamente bom ver casos de uso tão bacanas de cloud.

Na palestra, foi abordada ainda a questão da latência de rede, e porquê servidores fora do Brasil podem não ser uma boa ideia. Foi discutida a ideia de se usar CDNs, até que o Tabor mostrou a solução deles de um proxy local no Brasil com Squid. Achei interessante, algo simples de se fazer, e eficaz se seu problema é latência. Mas curioso que ele mesmo levantou o ponto de que eles não têm gzip nem minificação ainda; eu teria feito essas otimizações antes de me preocupar com a latência de rede.

Um ponto interessantíssimo pra mim da palestra foi quando o Tabor citou que a próxima versão do Peixe Urbano será estática, um HTMLzãon gerado pelo servidor. Eu cada vez mais tenho gostado dessa estratégia - esse blog é assim - e tenho visto que pode ser a solução pra muita gente.

## Outras palestras do Front in BH 2012

Tem a [minha palestra sobre otimizações web](/frontinbh-otimizacoes-web/), incluindo slides, vídeo e post complementar. E as outras:

* [Rest Client Side](/front-in-bh-rest-client-side-alexandre-gaigalas/), com Alexandre Gaigalas
* [Wordpress aliado do Front End](/front-in-bh-wordpress-leandro-vieira/), com Leandro Vieira
* [Novo Cinto de Utilidades do Desenvolvedor JavaScript](/front-in-bh-novidades-mozilla-leo-balter/), com Leo Balter
* [Desafios do Design Mobile](/front-in-bh-desafios-design-mobile-horacio-soares/), com Horácio Soares
* [CSS Sucks](/front-in-bh-css-sucks-zeno-rocha/), com Zeno Rocha
* [Estilizando folhas de estilo com estilo](/front-in-bh-estilizando-css-com-estilo-bernard-de-luna/), com Bernard de Luna


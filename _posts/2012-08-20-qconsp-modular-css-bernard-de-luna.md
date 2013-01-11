---
layout: post
title: "QCon SP 2012: anotações da palestra 'Modular CSS: projetando CSS para aplicativos' do Bernard De Luna"
category: evento
description: Minhas anotações da palestra do Bernard De Luna no evento QCon SP 2012
---

Bernard De Luna ([blog](http://bernarddeluna.com/blog/), [twitter](https://twitter.com/bernarddeluna/)), da MeltDSP, palestrou palestrou na track de **Front End** do evento [QCon SP 2012](http://www.qconsp.com/) sobre boas práticas de CSS e modularidade com o título **Modular CSS: projetando CSS para aplicativos** ([slides](http://www.slideshare.net/bernarddeluna/modular-css-projetando-css-para-aplicativos)).

## Minhas anotações

- Muitos projetos são focados no visual, e produção linear, página a página. Mas é ruim. Refazemos muitas coisas.
- Designer projeta a interface. Se ele fizer de forma modular, já facilitaria tudo.
- Mas precisamos entender que Site é diferente de App.
- Site tem foco em: **estilo, diagração, primeiro impacto**.
- App tem foco em: estilo, funcionalidades, condução do usuário (tour ou wizard)
- Frameworks de grids fixos são feios. 
	* Misturam HTML e CSS. (tipo class `.grid-4-12`)
	* Manutenção dolorosa
	* Orienta o design e não o contrário.
- Primeiro pensamento modular é pensar em **centralização**, pra mudanças afetarem um lugar só
- Facilitamos com o *Semantic.gs* ou SASS, LESS, Stylus. Mas gera dependência.
- Mas cuidado com buscar velocidade ao extremo, senão voltamos a um Fireworks da vida.
- Crie seu proprio framework: faça seus padrões, com seus ajustes.
- Evite utilizar herança
	* Prefira '.widget-tt' a '.widget h2'
	* Use classes independentes.
	* Evite dependência do pai.
	* Facilita reutilização.
- Evite usar IDs pra estilização: class ainda é performatica mas ajuda a reutilizar.
- Foque na função e não no estilo ou conteúdo: pense em mudanças futuras.
- Dicas de reutilizacao:
	* Classes globais
	* Testar em outro local, outro contexto
	* Testar variações
	* Documentação.
- Fazer um guia de estilo. Uma documentacao com os componentes/widgets exibidos num lugar só.
- Exemplo: botão com class `.b` e um botao especial com `.b-pri` ou `.b-small`.
	* Usa o prefixo igual pra ficar claro
- Num sistema, gastamos bastante tempo na formatacao de form e table: crie ou use um mini framework reaproveitável.
- DRY CSS: modularizado, facilmente integrado, mas é vinculado ao estilo, vinculado ao ID, id em letra maiúscula!
- OOCSS:
	* separação de estrutura e estilo, container e conteudo
	* criacao de elementos globais
	* mas é muito dificil de aprender
	* existe um framework (ruim) com mesmo nome da técnica.
- SMACSS:
	* robusto
	* categorização em módulos: base, layout, modules, states e theme.
	* modulos independentes
	* mas é muito engessado
	* projeto não está aberto (precisa comprar o livro ou workshop).
- BEM (block element modifier)
	* modulos independentes completamente (nao so css, todo html, )
	* muito complexo, nomenclatura falha (menu__item_state)
- LESS / SASS
	* uso de variaveis pra cores, espaçamentos, estilos.
	* mas usar preprocessador foge dos padrões, gera dependência e não é CSS.
- Crie um arquivo externo
	* 'Standards' sempre atualizado com elementos que se repetem
- Modularizacao em mini classes: `.pao.maionese.tomate.hamburguer`
- Envolva sua equipe no processo de padronização senao não ha comprometimento da equipe
- Prototipe
- Crie caixas e containers pra deixar o conteudo mais alteravel

## Meus comentários

Excelente palestra do Bernard. É uma das poucas pessoas que conheço que consegue falar com propriedade de arquitetura de CSS e apontas aspectos positivos e negativos não triviais. As dicas de modularização de se trabalhar com várias classes pequenas e independentes são muito boas.

Apenas discordei do pé atrás que ele tem com pré-processadores. Pra mim pelo menos, tem sido ótimo usá-los. Claro que é uma dependência a mais no projeto, mas já temos tantas outras com tantos outros frameworks que não vejo tanto problema assim. Uma estratégia que uso é incluir o pré-processamento já no script de build do projeto, assim tudo fica fácil de usar por todos os desenvolvedores envolvidos. Evito envolver dependência de ferramentas gráficas pra fazer essa compilação.

Por último, achei interessantíssima a comparação das técnicas de CSS que se fala tanto - como DRY, SMACSS, OOCSS e BEM. Conheço várias delas, mas confesso que nunca me aprofundei em nenhuma. Sempre achei um tanto overkill. E depois da metralhada que o Bernard deu na palestra, duvido que vá me interessar por alguma dessas técnicas. O legal é que ele criticou apontando exatamente o problema de cada uma.

## Outras palestras da track de Front End do QCon SP 2012

Tem a [minha palestra sobre mobile web](/palestra-mobile-web/), incluindo slides, anotações, referências e demos. O evento teve muitas palestras de vários temas. Anotei aqui apenas as da trilha de Front End que assisti:

* [Reponsive Design e a Ubiquidade da Web](/qconsp-responsive-design-eduardo-shiota/), com Eduardo Shiota
* [HTML5 Offline & Storage: Soluções para um mundo sem conexão permanente](/qconsp-html5-offline-storage-gabriel-oliveira/), com Gabriel Oliveira
* [Mitos do Front end](/qconsp-mitos-frontend-zeno-rocha/), com Zeno Rocha



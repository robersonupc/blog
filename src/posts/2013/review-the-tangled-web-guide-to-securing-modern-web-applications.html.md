---
layout: post
title: 'Review do livro "The Tangled Web: A Guide to Securing Modern Web Applications" do Michal Zalewski'
date: 2013-02-07
category: review
description: Um dos livros mais divertidos que já li. Foi escrito por Michal Zalewski, especialista em segurança na Web e que trabalha no Google. Trata dos desafios de segurança que os navegadores a desenvolvedores Web enfretam hoje em dia.
shareImage: /img/posts/reviews/the-tangled-web-share.jpg
---

Um dos livros mais **divertidos** que já li. Foi escrito por [Michal Zalewski](http://lcamtuf.coredump.cx/), especialista em segurança na Web e que trabalha no Google. Trata dos desafios de **segurança** que os navegadores a desenvolvedores Web enfretam hoje em dia.

O assunto é até um pouco pesado, mas o livro é muito bem escrito, didático e leve de digerir. ["The Tangled Web: A Guide to Securing Modern Web Applications"](http://www.amazon.com/dp/B006FZ3UNI/) não é, porém, um livro pra todo mundo. É um livro mais **avançado**, voltado pra uma audiência que já sujou a mão com as coisas por trás do HTTP, ou que sabe a diferença que encodings podem fazer na aplicação, e que já toparam com siglas como [XSS](http://blog.caelum.com.br/seguranca-em-aplicacoes-web-xss/) e [CSRF](http://pt.wikipedia.org/wiki/Cross-site_request_forgery).

É um **excelente livro**. Mostra com riqueza de detalhes o que acontece por trás dos navegadores -- veja [no site dele](http://lcamtuf.coredump.cx/tangled/) um overview dos capítulos pra ter uma ideia da quantidade de informação que ele tem. O livro expõe uma quantidade inimaginável de brechas de segurança na Web. E a conclusão dele -- e minha, após lê-lo -- é que **a Web funciona meio que por sorte**. É **impressionante** o que é possível fazer de ruim!

<figure>
	<img src="img/posts/reviews/the-tangled-web.jpg" alt="Capa do livro">
</figure>

Eu gosto de estudar a segurança na Web meio que por hobby. Já estava familiarizado com ataques como [XSS](http://blog.caelum.com.br/seguranca-em-aplicacoes-web-xss/), [CSRF](http://pt.wikipedia.org/wiki/Cross-site_request_forgery), [injeção de parâmetros](http://blog.caelum.com.br/seguranca-em-aplicacoes-web-injecao-de-novos-parametros/), [clickjacking](http://en.wikipedia.org/wiki/Clickjacking); já conhecia algumas das novidades como [CORS](http://en.wikipedia.org/wiki/Cross-origin_resource_sharing) e [CSP](https://developer.mozilla.org/en-US/docs/Security/CSP/Introducing_Content_Security_Policy). Mesmo assim, **aprendi muito**.

O autor tem uma visão muito clara do que é eficaz e o que não é com relação a segurança. Mostra os princípios por trás do ataques e as limitações nos navegadores, sendo bem realista. Uma citação que mostra o tipo de comentário que você vai encontrar no livro:

> Antimalware features do not make individual attacks any more difficult; they are simply meant to stop the large-scale distribution of unsophisticated malware, based on the assumption that most users are not interesting enough to be specifically targeted or attacked with something clever.

E, uma frase ótima que está lá no final, na conclusão, quando ele reflete sobre segurança de um modo geral, e como a segurança na Web está relacionada:

> Why is it that we get upset at developers who use cryptography incorrectly, but we don’t mind that the locks on our doors can be opened with a safety pin? Why do we scorn web developers who can’t get input validation right, but we don’t test our breakfast for laxatives or LSD?

Gostei muito desse livro, mas não é pra qualquer um. Ele também é um pouco mais caro (paguei quase $30 no [ebook](http://www.amazon.com/dp/B006FZ3UNI/)) e, como foi lançado em no fim de 2011, pode não ter as últimas novidades. 

Mas, se você se interessa pela área, **definitivamente recomendo a leitura**.

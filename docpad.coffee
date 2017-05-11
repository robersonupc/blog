pathUtil = require('path')
slug = require('slug')
moment = require('moment')
juice = require('juice')
fs = require('fs')

moment.locale('pt')

docpadConfig = {

	collections:
		# todos posts
		posts: (database) ->
			@getCollection("html").createChildCollection()
				.setFilter('posts', (model) ->
					relativePath = pathUtil.dirname(model.attributes.fullPath).substr((__dirname+'/src/').length)
					return relativePath.indexOf('posts/') == 0
				)
				.setComparator({date: -1})
				.live()

		# posts de eventos
		eventos: (database) ->
			# posts de eventos
			@getCollection("posts").createChildCollection()
				.setFilter('eventos', (model) ->
					relativePath = pathUtil.dirname(model.attributes.fullPath).substr((__dirname+'/src/').length)
					return relativePath == 'posts/eventos'
				)
				.live()

		# artigos == posts sem eventos
		artigos: (database) ->
			# posts de eventos
			@getCollection("posts").createChildCollection()
				.setFilter('eventos', (model) ->
					relativePath = pathUtil.dirname(model.attributes.fullPath).substr((__dirname+'/src/').length)
					return relativePath != 'posts/eventos'
				)
				.live()

	templateData:
		site:
			title: 'sergiolopes.org'
			author:
				name: 'Sérgio Lopes'
			production_url: 'http://sergiolopes.org'

		youtube: (id, figcaption) ->
			result = """
			<figure class="responsive video">
				<div class="video-wrapper">
					<iframe src="http://www.youtube.com/embed/#{id}?HD=1&amp;rel=0&amp;showinfo=0&amp;modestbranding=1" 
						 frameborder="0" allowfullscreen></iframe>
				</div>
			"""
			result += if figcaption then "<figcaption>#{figcaption}</figcaption>" else  ""
			result + """

			</figure>

			"""

		slideshare: (id, figcaption) ->
			result = """
			<figure class="responsive video slideshare">
				<div class="video-wrapper">
					<iframe src="http://www.slideshare.net/slideshow/embed_code/#{id}" frameborder="0" allowfullscreen></iframe>
				</div>
			"""
			result += if figcaption then "<figcaption>#{figcaption}</figcaption>" else  ""
			result + """

			</figure>

			"""

		tweetable: (msg) ->
			"""
			
			<blockquote class="tweetable">
				#{msg}
				<a href="https://twitter.com/share" class="twitter-share-button" data-text="#{@msg}" data-via="sergio_caelum" data-related="sergio_caelum" data-count="none">Tweet this</a>
			</blockquote>

			"""

		getLayoutName: (post) ->
			post.layout.replace(/\..*/, '')

		slug: (text) ->
			slug(text)

		raw: (content_fn) ->
			content_fn().toString()

		dateAsText: (date, prefix) ->
			# se for mais de 75 dias, mostra data; senão mostra x dias atrás
			# if (new Date().getTime() - date.getTime() > 75 * 24 * 60 * 60 * 1000)
				(if prefix? then prefix else '') + moment(date).format('DD MMM YYYY')
			# else
			#	moment(date).lang('pt').fromNow()

		encodedAbsoluteURI: (post) ->
			encodeURIComponent(@absoluteURI(post))

		absoluteURI: (post) ->
			relativePath = pathUtil.dirname(post.fullPath).substr((__dirname+'/src/').length)

			if post.url == '/' # home
				@site.production_url
			else if relativePath.indexOf('files') == 0 # html estatico, nao post
				@site.production_url + post.fullPath.replace(/.+src\/files/, '')
			else if @getLayoutName(post) == 'redirect' # post externo
				post.originalURI
			else # post ou pagina normal
				@site.production_url + post.url + '/'

		encodedTitle: (post) ->
			encodeURIComponent(post.title)

		code: (lang, code) ->
			code = code()
			lines = code.split /\r?\n/

			code = ''
			spaces = undefined
			for line, i in lines
				# skip first and last line if empty
				if (i == 0 or i == lines.length - 1) and (line.match(/^\s*$/))
					continue

				# get first line space
				if not spaces
					spaces = /^\s*/.exec(line)[0]

				# get this line without initial spaces
				code += line.replace(new RegExp('^' + spaces), '') + '\n'

			"""<pre><code class="lang-#{lang}">#{code}</code></pre>"""

		prepareFeed: (html) ->
			# TODO reescrever base dos href e src pra absoluto??
			css = fs.readFileSync('src/documents/style/base/feed.css', 'UTF-8')
			result = juice.inlineContent(html, css)
			result.replace /figcaption/g, 'em'

	plugins:
		highlightjs:
			aliases:
				stylus: 'css'
				less: 'css'
				text: 'ini'

	documentsPaths: [
		'documents',
		'posts/2012',
		'posts/2013',
		'posts/2014',
		'posts/2015',
		'posts/caelum',
		'posts/eventos',
		'posts/podcasts',
		'posts/externo'
	]

	environments:
		development:

			# em desenvolvimento, ignora arquivos velhos
			ignorePaths: [
				__dirname + '/src/documents/feed',
				__dirname + '/src/documents/sitemap',
				__dirname + '/src/posts/2012',
				__dirname + '/src/posts/2013',
				__dirname + '/src/posts/caelum',
				__dirname + '/src/posts/eventos',
				__dirname + '/src/posts/podcasts',
				__dirname + '/src/posts/externo'
			]

		production:
			renderPasses: 2

}

# Export the DocPad Configuration
module.exports = docpadConfig
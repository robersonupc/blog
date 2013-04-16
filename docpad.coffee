docpadConfig = {

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
			result + "</figure>"

		slideshare: (id, figcaption) ->
			result = """
			<figure class="responsive video slideshare">
				<div class="video-wrapper">
					<iframe src="http://www.slideshare.net/slideshow/embed_code/#{id}" frameborder="0" allowfullscreen></iframe>
				</div>
			"""
			result += if figcaption then "<figcaption>#{figcaption}</figcaption>" else  ""
			result + "</figure>"

		tweetable: (msg) ->
			"""
			
			<blockquote class="tweetable">
				#{msg}
				<a href="https://twitter.com/share" class="twitter-share-button" data-text="#{@msg}" data-via="sergio_caelum" data-related="sergio_caelum" data-count="none">Tweet this</a>
			</blockquote>

    		"""

	renderPasses: 2

	documentsPaths: [
		'documents',
		'posts/2012',
		'posts/2013',
		'posts/caelum',
		'posts/eventos'
	]

	# em desenvolvimento, ignora arquivos velhos
	ignorePaths: [
		#'/Users/sergio/workspace/blog/src/posts/2012',
		'/Users/sergio/workspace/blog/src/posts/caelum',
		'/Users/sergio/workspace/blog/src/posts/eventos'
	]
}

# Export the DocPad Configuration
module.exports = docpadConfig
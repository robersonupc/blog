docpadConfig = {

	templateData:
		site:
			title: 'sergiolopes.org'
			author:
				name: 'Sérgio Lopes'
			production_url: 'http://sergiolopes.org'

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
		'/Users/sergio/workspace/blog/src/posts/2012',
		'/Users/sergio/workspace/blog/src/posts/caelum',
		'/Users/sergio/workspace/blog/src/posts/eventos'
	]
}

# Export the DocPad Configuration
module.exports = docpadConfig
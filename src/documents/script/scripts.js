// analytics
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-61051-6', 'sergiolopes.org');
ga('send', 'pageview');

// analytics: track external links
(function(doc) {
	if (!document.querySelectorAll) return;

	var rootUrl = location.protocol + '//' + (location.hostname||location.host) + 
				((document.location.port||false) ? ':' + location.port : '') + '/';

	function track(elements) {
		for (var i = 0; i < elements.length; i++) {
			var el = elements[i];

			// skips .dont-track links
			if (el.className == 'dont-track') continue;

			// skips self links
			if (el.href.indexOf(rootUrl) === 0) continue;

			// track
			el.addEventListener('click', function(){
				ga('send', 'pageview', '/EXTERNAL/' + this.href);
			}, false);
		}
	}

	track(doc.querySelectorAll('a[href^="http://"]'));
	track(doc.querySelectorAll('a[href^="https://"]'));
})(document);

// load twitter if needed
(function(){
	if (document.querySelectorAll('.tweetable').length > 0) {
		!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
	}
})();

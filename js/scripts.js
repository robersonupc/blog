// loads analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-61051-6']);
_gaq.push(['_trackPageview']);

(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = 'http://www.google-analytics.com/' + (location.hostname == 'localhost'? 'u/ga_debug.js' : 'ga.js');
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

// supports code copy
(function(){
	if (!document.querySelectorAll) return;

	var codes = document.querySelectorAll('div.highlight');
	for (var i = 0; i < codes.length; i++) {
		var div = codes[i];
		var pre = div.querySelector('pre');
		var linenos = pre.cloneNode(true);

		linenos.className = 'linenoscol';
		pre.className = 'maincode';

		div.appendChild(linenos);
	}
})();

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
				_gaq.push(['_trackPageview', '/EXTERNAL/' + this.href]);
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

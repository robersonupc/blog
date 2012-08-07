// inicialização e slides da palestra de mobile web
P.init({
	slideViewport: [1024, 768],
	possibleModes: ['audience', 'presentation']
});

function disableZoom() {
	Q('meta[name="viewport"]').get().setAttribute('content', 'width=device-width, minimum-scale=1.0, maximum-scale=1.0');
}
function enableZoom() {
	Q('meta[name="viewport"]').get().setAttribute('content', 'width=device-width, minimum-scale=0.25, maximum-scale=10.0');
}

// desabilita zoom só nesse slide
P.before('zoom', function(el, firstTime) {
	disableZoom();

	if (firstTime) {
		Q('#zoom .enable-zoom').on('tap', function() {
			enableZoom();
			Q(this).hide();
		});
	}
});
P.after('zoom2', enableZoom);

// faz scroll
P.on('scroll, input-url', {
	before: function() {
		setTimeout(function() { window.scrollTo(0,1); }, 100);
	}
 });

P.on('dedo', {
	before: function(el, firstTime) {
		disableZoom();
		Q('#dedo .bolinhas span').each(function(el) {
			el.style.background = '';
		});


		if (firstTime) {
			Q('#dedo .bolinhas span').on('tap', function() {
				if (this.getAttribute('data-num') % 2 == 0) {
					this.style.background = 'red';
				} else {
					this.style.background = 'green';
				}
			});
		}
	},
	after: enableZoom
});

P.on('gestos', {
	before: function(el, firstTime) {
		var container = Q('.touchme').get();
		container.innerHTML = '';

		if (firstTime) {
			var frases = {
				hold: 'Toque longo. (hold)',
				tap: 'Toque. (tap)',
				doubletap: 'Toque duplo. (double tap)',
				transformstart: 'Transformar. (pinch, scale)',
				transform: 'Em transformação. (pinch, scale)',
				transformend: 'Transformado. (pinch, scale)',
				dragstart: 'Começou a arrastar. (drag)',
				drag: 'Arrastando. (drag)',
				dragend: 'Arrastou. (drag)',
				swipe: 'Swipe'
			};
			container.onselectstart = function() { return false; }; // IE fix for doubletap

			var hammer = new Hammer(container, {
			    tap_max_interval: 700 // seems to bee needed for IE8
			});

			var type;
			for(type in frases) {
			    hammer['on'+ type] = function (e){
					container.innerHTML = frases[e.type];
				};
			}

			// cancel events to prevent zoom
			container.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
    	}
    }
 });

P.on('hotzones, orientation, orientationchange, mobilize', {
	before: function(el, firstTime) {
		Q(document.documentElement).addClass('height100');
	},
	after: function(el, firstTime) {
		Q(document.documentElement).removeClass('height100');
	}
});

P.on('geolocation', {
	before: function(el, firstTime) {
		Q('#geolocation .audience input').get().value = '';
		Q(el).find('.aviso').get().innerHTML = "";

		if (firstTime) {
			Q(el).on('tap', function(){
				if ("geolocation" in navigator) {
					navigator.geolocation.getCurrentPosition(function(p){

					    var lat = p.coords.latitude;
					    var lon = p.coords.longitude;

					    // descobre a cidade
					    // TODO fazer ajax de verdade antes de subir no site
					    Q(el).find('.aviso').get().innerHTML = "DEBUG: Sua localização é " + lat + ", " + lon + ".<br><br>Você está em SP, Fecomércio, na QCon 2012, auditório Web. Não muito perto da porta.";

					    // cidade fake só pro evento
					    setTimeout(function() {
					    	Q('#geolocation .audience input').get().value = 'São Paulo';
					    }, 1000);
					}, function(error) {
						Q(el).find('.aviso').get().innerHTML = "Não consegui pegar a localização do seu aparelho. Error: " + error.message + ' [' + error.code + ']';
						console.log(error);
					}, {timeout:10000});

				} else {
					Q(el).find('.aviso').get().innerHTML = "Seu navegador não suporta a Geolocation API.";
				}
			});
		}
	}
});


// monta contador de tap e button
P.on('fastbutton', {
	before: function(el, firstTime) {
		disableZoom();

		var tap = Q(el).find('.tap');
		var click = Q(el).find('.click');
		
		tap.get().contador = 0;
		click.get().contador = 0;

		tap.get().innerHTML = 'tap';
		click.get().innerHTML = 'click';

		if (firstTime) {
			tap.on('tap', function() {
				tap.get().innerHTML = 'tap ' + (++tap.get().contador);
			});
			tap.on('click', function(evt) {
				evt.preventDefault();
			});

			click.on('click', function() {
				click.get().innerHTML = 'click ' + (++click.get().contador);
			});
		}
	}
 });
 P.before('retina', enableZoom); // habilita zoom perdido no fastbutton


// roda o enableZoom logo de cara pra aumentar o zoom máximo
enableZoom();

// no iOS, muda titulo pra algo curto por causa das webapps
if(navigator.userAgent.indexOf('iPod') >= 0 || navigator.userAgent.indexOf('iPhone') >= 0 || navigator.userAgent.indexOf('iPad') >= 0) {
	document.title = 'Web Mobile';
}



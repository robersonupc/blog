// helper
function $(query) {
	// busca todos os elementos
	var elements = document.querySelectorAll(query);

	return {
		// atacha callbacks de forma simples
		on: function(eventName, callback) {
			for (var i = 0; i < elements.length; i++) {
				elements[i].addEventListener(eventName, callback, false);
			}
		}
	};
}

function log(message) {
	document.getElementById('log').innerHTML += message + '<br>';
}


// linka pro arquivo específico
document.getElementById('link-source').href += location.pathname.replace(/.*\//,'');

// qrcode
document.getElementById('qrcode').innerHTML = '<img src="https://chart.googleapis.com/chart?chs=210x210&cht=qr&chl=http://sergiolopes.org'+location.pathname+'&choe=UTF-8">'
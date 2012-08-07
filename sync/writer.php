<?php

	// HUGE TODO: generalize all this

	// check permission
	if ($_GET[secret] != 'xnqzvilcaeimqxtek') die('Unauthorized.');

	// write file
	file_put_contents('mobile-web.js', 'lastSlide("' . $_GET[slide] . '")');
?>OK
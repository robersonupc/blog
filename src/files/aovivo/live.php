<?php

	// get presentation name
	$presentation = $_GET['p'];
	$file = "../palestra-$presentation/index.html";

	// header with manifest and audience mode
?><!doctype html>
<html data-initial-mode="audience" data-room="main-room" manifest="/manifest/palestra/<?php echo $presentation?>.manifest">

<?php 
	// import actual presentation file
	require($file); 
?>
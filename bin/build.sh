#!/bin/bash

# compress css
for file in `find $1  -name '*.css'`; do
	echo Compressing $file
	yuicompressor $file > /tmp/sergiolopes.tmp
	mv /tmp/sergiolopes.tmp $file
done

# compress js
for file in `find $1  -name '*.js'`; do
	echo Compressing $file
	yuicompressor $file > /tmp/sergiolopes.tmp
	mv /tmp/sergiolopes.tmp $file
done

# compress html
for file in `find $1  -name '*.html'`; do
	echo Compressing $file
	htmlcompressor --compress-js --compress-css $file > /tmp/sergiolopes.tmp
	mv /tmp/sergiolopes.tmp $file
done
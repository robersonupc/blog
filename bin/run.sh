#!/bin/bash

# kill jekyll after this script is killed
trap "killall ruby node" EXIT

# starts jekyll in no-server mode
jekyll --auto --limit_posts 1 &
sleep 5

# compiles stylus
stylus _includes/css/palestra/ -w -u nib  &
for file in _includes/css/palestra/; do
	touch $file
done

# starts python server
cd _site
python -m SimpleHTTPServer 4000
#jekyll --server --auto --limit_posts 1
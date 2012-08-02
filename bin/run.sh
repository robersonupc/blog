#!/bin/bash

# kill jekyll after this script is killed
trap "killall ruby node" EXIT

# starts jekyll in no-server mode
jekyll --auto --limit_posts 1 &

# compiles stylus
stylus css/palestra/ -w -u nib --out _site/css/palestra/ &

# starts python server
cd _site
python -m SimpleHTTPServer 4000
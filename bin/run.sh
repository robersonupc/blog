#!/bin/bash

# kill jekyll after this script is killed
trap "killall ruby" EXIT

# starts jekyll in no-server mode
jekyll --auto --limit_posts 1 &

# starts python server
cd _site
python -m SimpleHTTPServer 4000
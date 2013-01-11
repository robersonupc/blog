#!/bin/bash

rm -rf _deploy

# build stylus
echo Build stylus
stylus _includes/css/palestra/ -u nib

echo Regenerating site
jekyll --no-future _deploy
cp .htaccess _deploy/.htaccess
cp aovivo/.htaccess _deploy/aovivo/.htaccess

echo Compressing files
bin/build.sh _deploy

# upload
echo Upload to server
rsync -avh --progress _deploy/ lowpis@sergiolopes.org:/home/lowpis/sergiolopes.org/
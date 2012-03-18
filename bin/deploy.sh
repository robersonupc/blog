#!/bin/bash

rm -rf _deploy

echo Regenerating site
jekyll _deploy
cp .htaccess _deploy/.htaccess

echo Compressing files
bin/build.sh _deploy

# upload
echo Upload to server
rsync -avh --progress _deploy/ lowpis@sergiolopes.org:/home/lowpis/sergiolopes.org/
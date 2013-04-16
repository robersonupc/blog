#!/bin/bash

echo Regenerating site
rm -rf out
docpad generate --env static

echo Compressing files
bin/build.sh _deploy

# upload
echo Upload to server
rsync -avHz --delete --progress _deploy/ lowpis@sergiolopes.org:/home/lowpis/sergiolopes.org/
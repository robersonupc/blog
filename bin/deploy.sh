#!/bin/bash

echo Regenerating site
rm -rf out
docpad generate --env static

# upload
echo Upload to server
rsync -avHz --delete --progress out/ lowpis@sergiolopes.org:/home/lowpis/sergiolopes.org/
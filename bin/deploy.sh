#!/bin/bash

set -e

./bin/posts.sh content/*.md

echo "Deploying..."
touch package.json # Stupid gh-pages fails if there's no package.json ¬¬
npx gh-pages -d './content' --nojekyll

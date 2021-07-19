#!/usr/bin/env sh

set -e

npm run build

git add .
git commit -m "Build files"
git push

npm run deploy
#!/bin/bash
# ---
# environment:
#   - SSH_AGENT_PID
#   - SSH_AUTH_SOCK
# ---
set -eu

. venv/bin/activate

rm -rf dist
staticjinja build --srcpath ./src/templates --outpath ./dist
cp -r src/images dist/
tailwindcss -i ./src/styles.css -o ./dist/styles.css --minify

ghp-import dist --branch=main --cname=www.udisas.com

git checkout main
git push origin main
git checkout develop

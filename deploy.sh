#!/bin/bash


rev=$(git rev-parse --short HEAD)

REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}

ssh-add $KEY_FILE

gitbook install && gitbook build

git remote add upstream $SSH_REPO
git fetch upstream
git checkout gh-pages
copy -R _book/* ./
git add .
git commit -m "Rebuild pages at ${rev}"
git push upstream gh-pages

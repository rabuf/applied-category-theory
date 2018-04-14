#!/bin/bash

pwd
git config remote.origin.url
rev=$(git rev-parse --short HEAD)

REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
echo $rev
echo $REPO
echo $SSH_REPO
#ssh-add $KEY_FILE

gitbook install && gitbook build
cd _book
git init
git remote add upstream $SSH_REPO
git fetch upstream -key ../$KEY_FILE && git reset upstream/gh-pages
rm .travis.yml deploy.sh deploy_key.enc
git add .
git commit -m "Rebuild pages at ${rev}"
git push upstream gh-pages -key ../$KEY_FILE

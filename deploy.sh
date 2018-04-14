#!/bin/bash

pwd
git config remote.origin.url
rev=$(git rev-parse --short HEAD)

REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}

chmod 600 deploy_key
eval `ssh-agent -s`
ssh-add $KEY_FILE

gitbook install && gitbook build
cd _book
git init
git remote add upstream $SSH_REPO
git fetch upstream  && git reset upstream/gh-pages
git checkout gh-pages
rm .travis.yml deploy.sh deploy_key.enc
git add .
git commit -m "Rebuild pages at ${rev}"
git push upstream gh-pages

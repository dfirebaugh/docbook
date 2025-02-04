#!/bin/bash

source ./scripts/build_docs.sh

GIT_REPO_URL=$(git config --get remote.origin.url)

cd .book
git init .
git remote add github $GIT_REPO_URL
git checkout -b gh-pages
git add .
git commit -am "Static site deploy"
git push github gh-pages --force
cd ..

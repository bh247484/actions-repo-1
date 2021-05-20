#!/bin/sh -l

echo ahoy from script.sh
git clone https://github.com/bh247484/actions-repo-2
cd actions-repo-2
yarn upgrade playbook-ui@9.15.0
cat package.json
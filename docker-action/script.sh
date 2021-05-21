#!/bin/bash

set -x
set -e
set -u

echo ahoy from script.sh

git config --global credential.helper cache
git config --global url."https://bh247484:$ACC_KEY@github.com/".insteadOf "https://github.com/"

git config --global user.email 'bh247484@gmail.com'
git config --global user.name 'bh247484'


git clone https://github.com/bh247484/actions-repo-2.git
# git clone https://bh247484:${ACC_KEY}@github.com/bh247484/actions-repo-2.git

cd actions-repo-2
# git remote set-url origin https://bh247484:${ACC_KEY}@github.com/bh247484/actions-repo-2.git

yarn upgrade playbook-ui@9.15.0
cat package.json

git checkout -b pb-9.15.0-upgrade
git add .
git commit -m "Upversion to latest"

git push origin -u pb-9.15.0-upgrade

# touch hub ~/.config
# echo "github.com:
#   - user: bh247484
#     oauth_token: $ACC_KEY
#     protocol: https" >> ~/.config/hub

# git config --global hub.user bh247484
# git config --global hub.protocol https

# HUB_PROTOCOL="https"
# GITHUB_USER="bh247484"
# GITHUB_PASSWORD="$ACC_KEY"
# GITHUB_HOST="https://bh247484:$ACC_KEY@github.com/"
GH_TOKEN="$ACC_KEY"


touch key.txt
echo "$ACC_KEY" > key.txt
gh auth login --with-token < key.txt
# touch key.txt
# echo "$ACC_KEY" >>> key.txt
# gh auth login --with-token < "$ACC_KEY"
gh pr create -a bh247484 --base main --title "Upversion Playbook to 9.15.0" --body "PR description" -l enhancement
# --head actions-repo-2:pb-9.15.0-upgrade

# HUB_VERBOSE=1 hub pull-request

# -F- <<<"Upversion Playbook to 9.15.0


# This should be the PR description.
# "

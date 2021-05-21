#!/bin/sh -l

echo ahoy from script.sh

mkdir /root/.ssh/

# echo "$SSH_KEY" > /root/.ssh/id_rsa
# ssh -o "StrictHostKeyChecking=no"

git config --global credential.helper store

git config --global url.'https://bh247484:'"$ACC_KEY"':@github.com/'.insteadOf 'https://github.com/'

git config --global user.email "bh247484@gmail.com"
# git config --global user.name "$ACC_KEY"


# git clone https://github.com/bh247484/actions-repo-2

# Username for 'https://github.com/bh247484/actions-repo-2': bh247484
# Password for 'https://USERNAME@some_git_server.com': <PASSWORD>

git clone https://github.com/bh247484/actions-repo-2.git
cd actions-repo-2
yarn upgrade playbook-ui@9.15.0
cat package.json

git checkout -b pb-9.15.0-upgrade
git add .
git commit -m "Upversion to latest"

# git remote add origin https://bh247484:"$ACC_KEY"@github.com/bh247484/actions-repo-2.git

git push origin -u pb-9.15.0-upgrade
expect "Username for 'https://github.com':"
send -- "bh247484"

expect "Password for 'https://bh247484@github.com':"
send -- "$ACC_KEY"

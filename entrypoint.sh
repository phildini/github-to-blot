#!/bin/sh

set -u

git checkout "${GITHUB_REF:11}"

branch=$(git symbolic-ref --short HEAD)

sh -c "git config --global credential.username $BLOT_USERNAME"
sh -c "git config --global core.askPass /cred-helper.sh"
sh -c "git config --global credential.helper cache"
sh -c "git remote add mirror $*"
sh -c "echo pushing to $branch branch at $(git remote get-url --push mirror)"
sh -c "git push mirror $branch"

exit 0
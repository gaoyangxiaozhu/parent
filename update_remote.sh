#!/bin/bash

set -e

_update_time="$(date '+%Y-%m-%d')"
COMMIT_MSG="update htmls in ${_update_time}"

git pull
git submodule update --remote --merge
git add --all

set +e

git commit -am "$COMMIT_MSG"

# only push if have new files generated
if [ "$?" -eq 0 ];then
    git push
fi

exit 0







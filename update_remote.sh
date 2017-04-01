#!/bin/bash

set -e

_update_time="$(date '+%Y-%m-%d')"
COMMIT_MSG="update htmls in ${_update_time}"

git add --all
git commit -am "$COMMIT_MSG"
git push

exit 0







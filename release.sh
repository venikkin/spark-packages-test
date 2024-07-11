#!/bin/bash

set -eEuo pipefail

if [[ $# -lt 5 ]] ; then
    echo "Usage ./release.sh <USER> <TOKEN> <GIT_HASH> <VERSION> <PATH_TO_PACKAGE_FILE>"
    exit 1
fi

USER=$1
TOKEN=$2
GIT_HASH=$3
VERSION=$4
PATH_TO_PACKAGE_FILE=$5
LICENSE="0"

curl -X POST --fail 'https://spark-packages.org/api/submit-release' \
  -u "$USER:$TOKEN" \
  -F "git_commit_sha1=$GIT_HASH" \
  -F "version=$VERSION" \
  -F "license_id=$LICENSE" \
  -F "name=venikkin/spark-packages-test" \
  -F "artifact_zip=@$PATH_TO_PACKAGE_FILE"
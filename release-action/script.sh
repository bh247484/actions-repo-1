#!/bin/bash

if $RELEASE_TYPE == 'alpha'
then
  regex='^@alpha-deploy[[:space:]]([[0-9]+\.[0-9]+\.[0-9]+])$'
  if [[ $BODY_TEXT =~ regex ]]; then
    match=${BASH_REMATCH[1]}
    PB_VERSION=${match:1:-1}
  fi
fi

echo PB_VERSION
#!/bin/bash
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for i in $BIN_DIR/../experiments/*.yml
do
  grep conditions: "$i" > /dev/null ||  sed -i '' "/^value:/r $BIN_DIR/prerequisites.yml" "$i"
done

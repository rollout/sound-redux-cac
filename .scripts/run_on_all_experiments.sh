#!/bin/bash
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for i in "$BIN_DIR"/../experiments/*.yml
do
  node "$BIN_DIR"/$1 "$i"
done

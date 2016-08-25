#!/bin/bash
set -e

./generate_index.sh
git add .
git c "update"
git push
curl -XPURGE bspang.com

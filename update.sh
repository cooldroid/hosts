#! /usr/bin/env bash

git pull --all --rebase
python3 makeCompressHosts.py
git checkout -- hosts readmeData.json
git commit --all --amend --no-edit
git push --force cooldroid master

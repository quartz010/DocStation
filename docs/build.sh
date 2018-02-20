#!/bin/bash

gitbook build ./ docs > build.log
git add .
git commit -m `date +%Y-%m-%d`



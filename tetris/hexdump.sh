#!/bin/bash

FILE='Tetris DX.src'

for commit in $(git log --format='%H %cI' ${FILE})
do
    git show ${commit}:./${FILE} > output/${commit}
done

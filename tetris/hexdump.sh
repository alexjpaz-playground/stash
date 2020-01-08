#!/bin/bash
FILE='Tetris\ DX.srm'

i=0

rm -rf output/
mkdir -p output

for commit in $(git log --format='%H' "${FILE}")
do
    git show $commit:./Tetris\ DX.srm | xxd > output/${i}
    ((i=i+1))
done

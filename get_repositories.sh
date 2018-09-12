#!/bin/bash -

file=repositories.txt
directory=$HOME/Desktop/GHC18

mkdir -p ${directory}

while IFS= read -r repo; do
    cd ${directory}
    git clone "${repo}"
done < "$file"
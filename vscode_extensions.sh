#!/bin/bash -

file=extensions.txt

while IFS= read -r extension; do
    code --install-extension "${extension}"
done < "$file"
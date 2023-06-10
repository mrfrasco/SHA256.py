#!/bin/bash

read -p "Enter the name of the file to hash: " filename
read -p "Enter the name of the hash file: " hash_filename

sha256sum "$filename" | awk '{print $1}' > "$hash_filename"

echo "Hash written to $hash_filename"
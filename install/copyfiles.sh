#!/bin/bash
cd install
while IFS=$' ' read -r file destination; do
    source_file="files/$file"
    if [[ "$source_file" == *.tar.gz ]]; then
        tar -xzf "$source_file" -C "$destination"
        echo "Extracted and copied '$source_file' to '$destination'"
    else
        cp "$source_file" "$destination"
        echo "Copied '$source_file' to '$destination'"
    fi
done < "copyfiles.conf"

#!/bin/bash

cd /home;
for dir in *; do 
    if [[ -d "$dir" && ! -L "$dir" ]]; then
        echo "Archiving $dir"
        tar pvczf "/root/backups/home-$dir.tar.gz" "/home/$dir"
    fi; 
done

#!/bin/bash
# Load connection details from config.sh
source config.sh
rsync -azP $username@$host:$remote_path $local_path

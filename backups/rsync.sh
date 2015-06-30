#!/bin/bash
# Load connection details from config.sh
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $dir/config.sh
rsync -azP $username@$host:$remote_path $local_path

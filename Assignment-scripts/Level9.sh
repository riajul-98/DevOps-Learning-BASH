#!/bin/bash

Directory="$1"

if [ ! -d "$Directory" ]
then
        echo "Directory does not exist!"
        exit 1
fi

if ! command -v inotifywait &> /dev/null
then
        sudo apt update && sudo apt install inotify-tools -y
fi

mkdir -p Level9-changes/Logs

inotifywait -m -e create -e modify -e delete --format '%T %e %w%f' --timefmt '%Y-%m-%d %H:%M:%S' "$Directory" >> "./Level9-changes/Logs/${Directory//\//_}.log" 
#!/bin/bash

if [[ "$#" -ne 4 ]]; then
	echo "Usage: COMMAND existing_file new_file current_string new_string"
	exit 1
fi

sed "s/$3/$4/g" "$1" > "$2"

exit 0

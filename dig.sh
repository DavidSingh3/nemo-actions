#!/bin/bash

# Function to get the subdirectories of a directory
get_subdirectories() {
    local target_dir="$1"
    find "$target_dir" -mindepth 1 -maxdepth 1 -type d
}

# Get the selected directory from the arguments
selected_dir="$1"
current_dir="$selected_dir"

# Loop until there's no longer exactly one subdirectory
while true; do
    subdirs=($(get_subdirectories "$current_dir"))
    if [ "${#subdirs[@]}" -eq 1 ]; then
        current_dir="${subdirs[0]}"
    else
        break
    fi
done

# Open the deepest single subdirectory in a new Nemo window
nemo "$current_dir" --existing-window

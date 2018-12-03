# !/bin/bash

## mytree.sh - print out a recursive listing of all files in a directory

## https://stackoverflow.com/questions/43621880/shell-script-to-recursively-print-full-directory-tree-using-ls

## https://stackoverflow.com/questions/501367/how-to-recursively-list-all-files-and-directories

walk() {
        local indent="${2:-0}"
        printf "%*s%s\n" $indent '' "$1"
        for entry in "$1"/*; do
                [[ -d "$entry" ]] && walk "$entry" $((indent+4))
        done
}
walk "$1"

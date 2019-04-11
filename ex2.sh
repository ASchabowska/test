#!/bin/bash
DIRECTORY=$1


function count_files () {
    # if [ ${#} -neq 0 ]; then
        regular=$(ls -l $DIRECTORY | grep '^-' -c) 
        directories=$(ls -l $DIRECTORY | grep '^d' -c) 
        symlinks=$(ls -l $DIRECTORY | grep '^l'-c)
        blocks=$(ls -l $DIRECTORY | grep '^b'-c)
        echo -e "| directory: $DIRECTORY | \n| regular files: $regular | \t | directories: $directories | \t | symlinks: $symlisnk | \t | block devices: $blocks |\n"
        echo -e "regular files: $regular  \ndirectories: $directories \nsymlinks: $symlisnk \nblock devices: $blocks"
    # fi

    # if [ $# -eq 0 ]; then
    #     echo "Usage: /path/to/script directory"
    #     exit 3
    # fi   

    # if [ ! -d $DIRECTORY ]; then
    #     echo "ERROR: $DIRECTORY is not a directory"
    #     exit 3
    # fi    
}

count_files 
exit $?

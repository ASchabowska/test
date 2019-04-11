#!/bin/bash
DIRECTORY=$1

function delete_files () {
     find $DIRECTORY -size +25M -mtime +2 -exec /bin/rm {} \;
     echo "DONE!"
     exit #?
}

delete_files $DIRECTORY
exit #?
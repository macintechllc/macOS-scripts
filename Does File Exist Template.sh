#!/bin/bash

## Variables ####
## flag -d for directory ###
## flag -e for any file regardless of type ## 
## flag -f for file ## 

FILE="$4"
flag="$5"
FILENAME="$6"


if [ $5 "$FILE" ];then
	echo "$FILENAME exists."
	## ENTER ANY COMMANDS YOU WANT RUN HERE IF THE FILE EXISTS ##
else
	echo "$FILENAME does not exist"
	## ENTER ANY COMMANDS YOU WANT RUN HERE IF THE FILE DOES NOT EXIST ##
fi


#!/bin/bash

## Variables ####
## flag -d for directory ###
## flag -e for any file regardless of type ## 
## flag -f for file ## 

file=$4
flag=$5
shortname="$6"

## Example ##
## file=/Library/Application\ Support/MyCompany/security.sh ##
## flag=-f ##
## shortname="Test Document" ##

if [ $flag "$file" ];then
	echo "$shortname exists."
	## ENTER ANY COMMANDS YOU WANT RUN HERE IF THE FILE EXISTS ##
else
	echo "$shortname does not exist"
	## ENTER ANY COMMANDS YOU WANT RUN HERE IF THE FILE DOES NOT EXIST ##
fi


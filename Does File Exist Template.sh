#!/bin/bash

## Here is a basic template for checking if a file exists. Inspo from Linuxize.com ##
## For more intensive does file exist options check out https://linuxize.com/post/bash-check-if-file-exists/ ###


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


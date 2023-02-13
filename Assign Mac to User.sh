#!/bin/bash

## VARIABLES 
LOGGEDINUSER=$(stat -f '%Su' /dev/console)
REALNAME=$(dscl . -read /Users/$LOGGEDINUSER RealName )
EMAILADDRESS="$LOGGEDINUSER@mycompany.com"

## Get the current logged in user and abort if it is currently the root user ## 

if [ "$LOGGEDINUSER" == "root" ]; then
	echo "Currently logged in user is root - aborting."
	echo "------------------------------------------------------------"
	exit 1
fi

## Echo the users information for logs ##
echo the current user is $LOGGEDINUSER
echo the users real name is $REALNAME
echo the users email is $EMAILADDRESS

## Assign the computer if the Logged In User information is not blank ##
if [ "$LOGGEDINUSER" != "" ];then
	jamf recon -endUsername "$LOGGEDINUSER" -realname "$REALNAME" -email "$EMAILADDRESS"
else
	echo "error in assigning the computer. Tagging with UNASSIGNED"
	/usr/local/bin/jamf recon -endUsername "UNASSIGNED" -realname "UNASSIGNED" -email "UNASSIGNED"
fi





#!/bin/bash

SMB_CONNECTIONS=$(($(smbstatus -p | wc -l) - 4))
ACTIVE_USERS=$(loginctl list-sessions | wc -l)

if (("$SMB_CONNECTIONS" > "0")) && (("$ACTIVE_USERS" > "0"))
then
	exit 1
else
	exit 0
fi



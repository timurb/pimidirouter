#!/bin/sh

FROM='Arturia KeyStep 32' 
TO='Xio'

set -x
while true; do
       	aconnect -l | grep -q 'Connecting To' \
		|| aconnect -e "${FROM}" "${TO}" 
	sleep 1
done

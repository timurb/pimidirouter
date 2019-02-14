#!/bin/sh

FROM='Arturia KeyStep 32' 
TO='Xio'

set -x
while true; do
	sleep 1
       	aconnect -l | grep -q 'Connecting To: 128:0' && continue
	aconnect "${FROM}" 128:0
	aconnect 128:1 "${TO}"
done

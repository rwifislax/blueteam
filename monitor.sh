#!/bin/bash

while true
do
        clear
        w
        echo ""
        echo "NETSTAT - ESTABLISHED CONNECTIONS"
        netstat -anop | egrep EST
        echo ""
        #echo "ss -tup - established connections"
        #ss -tup | egrep EST
        #echo ""
        echo "Authentication logs"
        tail -2 /var/log/auth.log
        echo ""
        echo "Samba logs"
        tail -2 /var/log/samba/smb.log
        sleep 5
done

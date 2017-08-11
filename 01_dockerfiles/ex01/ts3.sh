#!/bin/sh

USER="teamspeak"
TS3='/teamspeak3-server_linux_amd64'
STARTSCRIPT="$TS3/ts3server_minimal_runscript.sh"
su $USER -c "$STARTSCRIPT createinfile=1"

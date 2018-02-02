#!/usr/bin/expect -f
 
 
spawn /home/devlet/spinnaker_ansible/files/install_spinnaker.sh
 

set timeout 10s
 
expect "Please supply a non-root user to run Halyard as:"

send --  "devlet\n" 

set timeout 120s

expect eof 

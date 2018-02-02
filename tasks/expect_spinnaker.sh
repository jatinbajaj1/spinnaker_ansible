#!/usr/bin/expect -f
 
 
spawn /home/dev/spinnaker_ansible/files/install_spinnaker.sh
 

set timeout 10s
 
expect "Please supply a non-root user to run Halyard as:"

send --  "dev\n" 

set timeout 150s

expect eof 

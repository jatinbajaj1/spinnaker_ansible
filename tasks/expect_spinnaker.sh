#!/usr/bin/expect -f
 
set username [lindex $argv 1];

set timeout 1

spawn ./install_spinnaker.sh

set timeout 5s

 
expect "Please supply a non-root user to run Halyard as:" 

send "$username\n";

interact

#send  { user }


set timeout 150s

#expect eof 

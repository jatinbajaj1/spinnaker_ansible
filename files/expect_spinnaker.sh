#!/usr/bin/expect -f
 
 
spawn ./install_spinnaker.sh
 
expect "[sudo] password for\r"

send -- "dev\n"
 
expect "Please supply a non-root user to run Halyard as:"

send -- "dev\n"

set timeout 180s

expect eof 

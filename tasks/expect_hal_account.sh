#!/usr/bin/expect -f
 
 
spawn ./add_hal_accnt.sh
 

set timeout 1s
 
expect "Your docker registry password:"

send -- "cisco123\n" 

set timeout 150s

expect eof 

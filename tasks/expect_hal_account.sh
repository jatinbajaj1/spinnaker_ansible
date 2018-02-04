#!/usr/bin/expect -f
 
 
spawn ./add_hal_accnt.sh $1 $2 $3
 
set timeout 1s
 
expect "Your docker registry password:"

send -- "cisco123\n" 

set timeout 150s

expect eof 

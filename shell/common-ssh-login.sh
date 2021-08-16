#!/usr/bin/expect
set serverhost [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]

spawn ssh $username@$serverhost
expect {
    "$username*password:*" {
        send "$password\r";
        exp_continue;
    }
}

interact

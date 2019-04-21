#! /usr/bin/expect

set user [lindex $argv 0]
set pass [lindex $argv 1]

spawn make install
expect "Please enter the login/email string for no-ip.com"
send "$user\r"
expect "Please enter the password for user '$user'"
send "$pass\r"
expect eof

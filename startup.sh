#!/bin/bash

service rsyslog start
service denyhosts start
/usr/sbin/sshd -D &
tail -f /var/log/auth.log /var/log/denyhosts
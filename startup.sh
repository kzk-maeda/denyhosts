#!/bin/bash

service rsyslog start
service denyhosts start
/usr/sbin/sshd -D &
/bin/sh /var/awslogs/bin/awslogs-agent-launcher.sh &
tail -f /var/log/auth.log /var/log/denyhosts /var/log/awslogs.log
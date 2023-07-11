#!/bin/bash

password="q2333vv."

echo "设置密码..."
echo -e "$password\n$password" | passwd

sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

service sshd restart

echo "成功开启root登录"

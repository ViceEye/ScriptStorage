#!/bin/bash

apt update -y
apt install -y curl 
apt install -y socat

curl https://get.acme.sh | sh

echo -n "输入注册邮箱："
read emailAddress

echo -n "输入注册域名："
read domainName

~/.acme.sh/acme.sh --register-account -m ${emailAddress}

~/.acme.sh/acme.sh --issue --force -d ${domainName} --standalone

~/.acme.sh/acme.sh --installcert -d ${domainName} --key-file /root/private.key --fullchain-file /root/cert.crt

echo '输入你想要的密码'
passwd

sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

service sshd restart

echo '成功开启root登录'

echo '开始安装X-UI'
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)

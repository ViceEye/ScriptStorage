apt update
apt install wget -y
apt install unzip -y
apt install screen -y

wget https://raw.githubusercontent.com/ViceEye/MyGithubStorage/main/forward-server.linux64.v1.3.5.zip
unzip forward-server.linux64.v1.3.5.zip -d port-forward

chmod +x -R port-forward

screen -S forward

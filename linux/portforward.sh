apt update
apt install wget -y
apt install unzip -y
apt install screen -y

wget https://raw.githubusercontent.com/ViceEye/MyGithubStorage/main/forward-server.linux64.v1.3.5.zip
unzip forward-server.linux64.v1.3.5.zip

chmod +x -R forward-server.linux64.v1.3.5

screen -S forward

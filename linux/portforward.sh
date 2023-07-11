apt update
apt install wget -y
apt install unzip -y
apt install screen -y

wget https://raw.githubusercontent.com/ViceEye/MyGithubStorage/main/forward-server.zip
mkdir forward-server
mv forward-server.zip forward-server
cd forward-server
unzip forward-server.zip

chmod +x -R ./*

screen -S forward

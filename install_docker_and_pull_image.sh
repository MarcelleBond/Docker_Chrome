curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
docker pull ghcr.io/marcellebond/docker_chrome
wget -L "https://raw.githubusercontent.com/MarcelleBond/Docker_Chrome/master/run.sh"
sudo sh run.sh

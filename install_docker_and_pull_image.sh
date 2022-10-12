sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker

docker pull hotbox.azurecr.io/marcellebond/docker_chrome:1.0.1
wget -L "https://raw.githubusercontent.com/MarcelleBond/Docker_Chrome/master/run.sh"
sudo sh run.sh $1

sudo apt-get -y update
sudo apt -y install git vim gdebi curl
curl -sSL https://get.docker.com/ | sh

git config --global core.editor vim
git config --global push.default simple
git config --global rerere.enabled true
git config --global pull.rebase true


sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

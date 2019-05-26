sudo apt-get -y update
sudo apt -y install git vim gdebi curl
snap install docker

git config --global core.editor vim
git config --global push.default simple
git config --global rerere.enabled true
git config --global pull.rebase true

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo add-apt-repository 'ppa:webupd8team/sublime-text-3'
sudo add-apt-repository 'ppa:webupd8team/atom'
sudo add-apt-repository ppa:kritalime/ppa

sudo apt-get update
sudo apt -y install unity-tweak-tool
sudo apt -y install gdebi
sudo apt -y install git
sudo apt -y install vim
sudo apt -y install ruby
sudo apt -y install krita
sudo apt -y install blender
sudo apt -y install nodejs
sudo apt -y install inkscape

sudo ln -s "$(which nodejs)" /usr/bin/node

sudo apt -y install build-essentials
sudo apt -y install -y libssl-dev libreadline-dev zlib1g-dev
sudo apt -y install libxss1 libappindicator1 libindicator7

wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
sudo gdebi -iy google-chrome*.deb

sudo apt-get -y install 'sublime-text-installer'
sudo apt-get -y install 'atom'

sudo rm google-chrome*.deb
sudo git config --global push.default simple

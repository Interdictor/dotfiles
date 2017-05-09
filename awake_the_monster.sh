sudo apt-add-repository -y 'ppa:brightbox/ruby-ng'
sudo add-apt-repository -y 'ppa:webupd8team/sublime-text-3'
sudo add-apt-repository -y 'ppa:webupd8team/atom'
sudo add-apt-repository -y 'ppa:kritalime/ppa'

sudo apt-get -y update
sudo apt -y install unity-tweak-tool
sudo apt -y install gdebi
sudo apt -y install git
sudo apt -y install vim
sudo apt -y install krita
sudo apt -y install blender
sudo apt -y install nodejs
sudo apt -y install ruby2.4 ruby2.4-dev

sudo ln -s "$(which nodejs)" /usr/bin/node

sudo apt -y install build-essentials
sudo apt -y install -y libssl-dev libreadline-dev zlib1g-dev
sudo apt -y install libxss1 libappindicator1 libindicator7

wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
sudo gdebi -iy google-chrome*.deb

sudo apt-get -y install 'sublime-text-installer'
sudo apt-get -y install 'atom'

sudo rm google-chrome*.deb

git config --global core.editor vim
git config --global push.default simple
git config --global rerere.enabled true
git config --global pull.rebase true

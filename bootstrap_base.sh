sudo apt-get -y update
sudo apt -y install git vim curl

git config --global core.editor vim
git config --global push.default simple
git config --global rerere.enabled true
git config --global pull.rebase true

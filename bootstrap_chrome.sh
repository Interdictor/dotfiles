DOWNLOAD_PATH="$(pwd)/$(hostname)/chrome.deb"

curl -L 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb' --create-dirs -o $DOWNLOAD_PATH
sudo gdebi -iy $DOWNLOAD_PATH

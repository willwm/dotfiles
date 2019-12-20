# https://typora.io/#linux
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo apt-add-repository -y 'deb https://typora.io/linux ./'
sudo apt update && sudo apt install typora
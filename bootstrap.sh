#/bin/bash -eux
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y zsh curl make
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd ~ && git clone git@github.com:skohar/dotfiles.git && cd ~/dotfiles && make && cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-wily main' > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install -y linux-image-extra-$(uname -r) docker-engine
sudo service docker start
sudo docker run hello-world
sudo usermod -aG docker sho

#!/bin/bash -eux
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y make wget curl tmux git htop avahi-discover avahi-utils avahi-daemon avahi-autoipd

sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo apt-get update
sudo apt-get install -y curl \
  linux-image-extra-$(uname -r) \
  linux-image-extra-virtual
sudo apt-get install -y apt-transport-https \
  ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get install -y software-properties-common
sudo add-apt-repository \
     "deb https://apt.dockerproject.org/repo/ \
     ubuntu-$(lsb_release -cs) \
     main"
sudo apt-get update -y
sudo apt-get -y install docker-engine
sudo usermod -aG docker $(id -u -n)

sudo apt-get update
sudo apt-get -y install vim vim-gtk vim-athena vim-gnome
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

sudo apt-get install -y build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev software-properties-common
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

mkdir $HOME/bin
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

sudo apt-get install -y openjdk-8-jdk

wget https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
sudo apt-get install -y unzip
unzip packer_0.8.6_linux_amd64.zip -d ~/bin

sudo bash -c 'echo "deb http://repo.pritunl.com/stable/apt wily main" >> /etc/apt/sources.list.d/pritunl.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv CF8E292A
sudo apt-get update
sudo apt-get install -y pritunl-client

#git clone https://github.com/rbenv/rbenv.git ~/.rbenv
#cd ~/.rbenv && src/configure && make -C src
#sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
#git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo apt-get install -y postgresql-client

curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli

sudo apt-get install -y python-dev
sudo pip install ansible

curl -L git.io/nodebrew | perl - setup
$HOME/.nodebrew/current/bin/nodebrew install-binary 4.2.6

sudo apt-get install -y inotify-tools

sudo apt-get install -y mdadm
sudo apt-get install -y xsel
pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline

#brew install peco
sudo apt-get install -y libncurses5-dev
#brew install fzf
sudo apt-get install -y autossh
sudo apt install -y qemu-system-aarch64 qemu-efi
dpkg -l | grep qemu
ls -l /usr/bin/qemu*
qemu-system-aarch64 -version
qemu-system-aarch64 -cpu help -machine virt | grep a57

wget http://download.virtualbox.org/virtualbox/5.0.14/virtualbox-5.0_5.0.14-105127~Ubuntu~wily_amd64.deb
sudo dpkg -i virtualbox-5.0_5.0.14-105127~Ubuntu~wily_amd64.deb

#wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
#sudo dpkg -i vagrant_1.8.1_x86_64.deb

sudo apt-get update
sudo apt-get install -y zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

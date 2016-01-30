# bootstrap-ubuntu
```
set -eux
sudo apt-get update
sudo apt-get install -y vim git tmux
ssh-keygen -t ed25519
ssh-keygen -t rsa -b 4098
mkdir -p $HOME/src && cd $_ && git clone git@github.com:skohar/bootstrap-ubuntu.git && cd bootstrap-ubuntu && ./bootstrap.sh
```

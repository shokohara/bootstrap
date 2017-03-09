# bootstrap-ubuntu
```
set -eux
sudo apt-get update
sudo apt-get install -y vim git tmux
ssh-keygen -t ed25519
ssh-keygen -t rsa -b 4098
mkdir -p $HOME/src && cd $_ && git clone git@github.com:shokohara/bootstrap-ubuntu.git && cd bootstrap-ubuntu && ./bootstrap.sh

sudo visudo
YOUR_USER_NAME ALL=(ALL) NOPASSWD: ALL

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
echo '. $HOME/z.sh' >> ~/.zshrc
```

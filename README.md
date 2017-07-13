[![CircleCI](https://circleci.com/gh/shokohara/bootstrap.svg?style=svg)](https://circleci.com/gh/shokohara/bootstrap)
[![Build Status](https://travis-ci.org/shokohara/bootstrap.svg?branch=master)](https://travis-ci.org/shokohara/bootstrap)

# bootstrap-ubuntu

1.
```
sudo visudo
YOUR_USER_NAME ALL=(ALL) NOPASSWD: ALL
```

2.
https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu?hl=ja
```
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
```

3.
```
gcloud init
```

4.
```
gcloud source repos clone bootstrap --project=shokohara-157622
```

5.
```
bootstrap/ubuntu/scala.sh
bootstrap/ubuntu/bootstrap.sh
```

# bootstrap-osx

## Open Keyboard Preference
## Disable audio input
## Change spotlight shortcut
## Disable smart dbquote
## Change Keyboard Capslock
## Change track pad
## Change font
- Preference > Language > English

## Restart

## Open this document
- http://bootstrap.mydomain.com

## Install brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Chrome
```
brew cask install google-chrome
```

## Install iTerm2
```
brew cask install iterm2
```

## Upload ssh key to GitHub
```
ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -q -N ""
```

https://github.com/settings/keys

## Install dotfiles
git clone git@github.com:shokohara/dotfiles.git ~/dotfiles
~/dotfiles/deploy.sh

## Set up gcloud
- https://cloud.google.com/sdk/docs/quickstart-mac-os-x

## Set up credential
cd $HOME; gcloud source repos clone credential --project=shokohara-157622

### Depends on gcloud

## Install applications $HOME/.Brewfile
### Depends on credential
```
source $HOME/credential/env
~/dotfiles/update-bundler.sh
```

## Haskell
## Ruby
## Node
## Java
## Scala

## Install zsh

```
sudo sh -c 'echo $(which zsh) >> /etc/shells'
chsh -s $(which zsh)
```

```
git clone https://github.com/riywo/anyenv ~/.anyenv
latestVersion=`pyenv install --list | grep -e ' [0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; pyenv install $latestVersion; pyenv global $_
latestVersion=`ndenv install --list | grep -e ' v[0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; ndenv install $latestVersion; ndenv global $_
```

## Install vim plugins
```
./vim.sh
```


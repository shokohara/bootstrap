[![CircleCI](https://circleci.com/gh/shokohara/bootstrap.svg?style=svg)](https://circleci.com/gh/shokohara/bootstrap)
[![Build Status](https://travis-ci.org/shokohara/bootstrap.svg?branch=master)](https://travis-ci.org/shokohara/bootstrap)

# bootstrap-ubuntu

https://qiita.com/koara-local/items/35b999631b6ab41fdc9f
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

https://brew.sh/

## System Preferences

System Preferences > General > Appearance > [x] Use dark menu bar and Dock
System Preferences > General > Appearance > [x] Automatically hide and show the menu bar
System Preferences > Dock > [x] Automatically hide and show the Dock
System Preferences > Dock > Size: Small
System Preferences > Mission Control > [ ] Automatically rearrange Spaces based on most recent use
System Preferences > Mission Control > [x] Group windows by application
System Preferences > Mission Control > Keyboard and Mouse Shortcuts > Disable all
System Preferences > Mission Control > Language & Region > Add nihongo
System Preferences > Security & Privacy > [x] Require password immediately after sleep or screen saver begins
System Preferences > Keyboard > Keyboard > Key Repeat
System Preferences > Keyboard > Keyboard > Delay Until Repeat
System Preferences > Keyboard > Keyboard > [x] User all F1, F2, etc, keys as standard function keys
System Preferences > Keyboard > Shortcuts > Mission Control > [ ] Mission Control
System Preferences > Keyboard > Shortcuts > Keyboard > [ ] Disable all check boxes
System Preferences > Keyboard > Shortcuts > Input Source > [x] Select the previous input source
System Preferences > Keyboard > Shortcuts > Input Source > [x] Select the previous input source
System Preferences > Keyboard > Shortcuts > Spotlight > [x] Show Spotlight Search
System Preferences > Keyboard > Shortcuts > Spotlight > [ ] Show Finder search window
System Preferences > Keyboard > Input Sources > Add Hiragana (Google)
System Preferences > Keyboard > Modifier Keys... > Caps Lock Key: Control
System Preferences > Keyboard > Accecibility > Uncheck all boxex
System Preferences > Keyboard > App Shortcuts > Uncheck all boxex
System Preferences > Trackpad > [x] Tap to click
System Preferences > Trackpad > Point & Click > Tracking speed: Fast
System Preferences > Trackpad > More Gestures > [x] App Exposé
System Preferences > Sharing > Change Computer Name
System Preferences > Sharing > [x] Screen Sharing
System Preferences > Sharing > [x] Remote Login
System Preferences > iCloud > [x] Back to My Mac
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

## Install fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
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

## Install zsh_history
```
cd $HOME
gcloud source repos clone zsh_history --project=shokohara-157622
```

## Setup iTerm2

## copy ssh key
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub sho@hostname.local
```

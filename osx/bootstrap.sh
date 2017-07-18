/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git

git clone git@github.com:shokohara/dotfiles.git ~/dotfiles
~/dotfiles/deploy.sh

brew tap Homebrew/bundle
brew bundle --global
stack install cabal

exec zsh -l

./anyenv.sh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install


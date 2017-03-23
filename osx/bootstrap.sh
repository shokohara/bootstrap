sudo xcodebuild -license
xcode-select --install

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

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

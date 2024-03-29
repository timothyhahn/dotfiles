#!/bin/sh

echo "Let's roll"

# Requirements:

## - Sign into Mac App Store
## - Install XCode

# Install brew if it's not installed
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run brew and install anything not installed
brew update

brew tap homebrew/bundle
brew bundle

# Install Mac App Store Apps
## Be Focused Pro
mas install 961632517x
## Bear
mas install 1091189122

# Create my directoriesx
mkdir $HOME/.config
mkdir $HOME/.zsh

# Turn on zsh
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
ZSH="$(which zsh)"
if [ "$SHELL" != "$ZSH" ]; then
    if ! grep -q "$ZSH" /etc/shells; then
        echo "Adding $ZSH to /etc/shells"
        echo "$ZSH" | sudo tee -a /etc/shells
    fi
    chsh -s $(which zsh)
fi

# Install asdf plugins
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add elm https://github.com/vic/asdf-elm.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# Install config files
rm -rf ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf ~/.aliases
ln -s $HOME/.dotfiles/.aliases $HOME/.aliases

rm -rf ~/.profile
ln -s $HOME/.dotfiles/.profile $HOME/.profile

rm -rf ~/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf ~/.tmux.conf
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

rm -rf ~/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

mkdir -p $HOME/.config/nvim
rm -rf ~/.config/nvim/init.vim
ln -s $HOME/.dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

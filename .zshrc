source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle asdf
antigen bundle docker
antigen bundle ssh-agent
antigen bundle tmux

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme timothyhahn/dotfiles themes/hahn

# Load my plugins.
antigen bundle timothyhahn/dotfiles plugins/zsh-kubernetes

# Tell Antigen that you're done.
antigen apply

source ~/.profile

source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle asdf
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle kubectl

# Other bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
antigen theme timothyhahn/dotfiles themes/hahn

# Load my plugins.
antigen bundle timothyhahn/dotfiles plugins/zsh-kubernetes

# Tell Antigen that you're done.
antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source ~/.profile

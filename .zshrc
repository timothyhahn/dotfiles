#######################################################
# load Square specific zshrc; please don't change this bit.
#######################################################
source ~/Development/config_files/square/zshrc
#######################################################

###########################################
# Feel free to make your own changes below.
###########################################

# uncomment to automatically `bundle exec` common ruby commands
# if [[ -f "$SQUARE_HOME/config_files/square/bundler-exec.sh"]]; then
#   source $SQUARE_HOME/config_files/square/bundler-exec.sh
# fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# load the aliases in config_files files (optional)
source ~/Development/config_files/square/aliases

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
[[ -f "$HOME/.localaliases" ]] && source "$HOME/.localaliases"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle ssh-agent
antigen bundle tmux

# Other bundles
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
# antigen theme timothyhahn/dotfiles themes/hahn
#
# Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply


# Load prompt
autoload -U promptinit; promptinit
export PURE_PROMPT_SYMBOL="韓 ❯"
prompt pure

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source ~/.profile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thahn/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thahn/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thahn/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thahn/google-cloud-sdk/completion.zsh.inc'; fi
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

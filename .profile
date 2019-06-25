# golang
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
export PHB_HOME="$HOME/code/bbh/phb"
source ~/.aliases

source <(kubectl completion zsh)

clear
archey -o

export PATH="$HOME/.cargo/bin:$PATH"
source /usr/local/opt/asdf/asdf.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

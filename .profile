# golang
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
export PHB_HOME="$HOME/code/bbh/phb"
source ~/.aliases

source <(kubectl completion zsh)
source /usr/local/opt/asdf/asdf.sh

clear
archey -o

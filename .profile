# golang
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
source ~/.aliases

source <(kubectl completion zsh)
source /usr/local/opt/asdf/asdf.sh

clear
archey -o

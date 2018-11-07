# golang
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
export PHB_HOME="$HOME/code/bbh/phb"
export KUBECONFIG=$KUBECONFIG:~/.kube/vagrant.conf
source ~/.aliases

source <(kubectl completion zsh)
source /usr/local/opt/asdf/asdf.sh

alias gophb="cd $PHB_HOME"

clear
archey -o

export PATH="$HOME/.cargo/bin:$PATH"

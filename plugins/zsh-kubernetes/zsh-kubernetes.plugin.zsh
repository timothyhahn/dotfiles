# Contexts
alias kcc='kubectl config get-contexts'

# Core
alias k='kubectl'
alias kc='kubectl'
alias kube='kubectl'
alias kd='kubectl delete'
alias kds='kubectl describe service'
alias ke='kubectl edit'
alias kg='kubectl get'
alias kga='kubectl get --all-namespaces'
alias kl='kubectl logs'
alias kcl='kubectl logs'
alias klf='kubectl logs -f'

# Jobs
alias kdj='kubectl delete job'
alias kdsj='kubectl describe jobs'
alias kej='kubectl edit jobs'
alias kgj='kubectl get jobs'
alias kgjy='kubectl get jobs -o yaml'

# Namespaces
alias kdns='kubectl delete namespaces'
alias kdsns='kubectl describe namespaces'
alias kens='kubectl edit namespaces'
alias kgns='kubectl get namespaces'
alias kgnsy='kubectl get namespaces -o yaml'

# Pods
alias kdp='kubectl delete pod'
alias kdsp='kubectl describe pods'
alias kep='kubectl edit pods'
alias kgp='kubectl get pods'
alias kgpy='kubectl get pods -o yaml'

# Services
alias kdss='kubectl describe services'
alias kes='kubectl edit services'
alias kgs='kubectl get services'
alias kgsy='kubectl get services -o yaml'

# Exec
alias kex='kubetl exec'
alias kexi='kubectl exec -it'

# General
alias ll="ls -laF --color=auto"
alias la="ls -A --color=auto"
alias l="ls -CF --color=auto"
alias grep="grep --color=auto"
alias pbc="pbcopy"
alias pbp="pbpaste"

# Navigation
alias dev="cd \$GITHUB"
alias gw="cd \$GOPATH"
alias ..="cd .."
alias ...="cd ../.."
alias .="pwd"
alias h="cd \$HOME"

# Utilities
alias profile="code \$GITHUB/dotfiles/aliases.inc"
alias refresh="source ~/.bashrc"
alias todo="code \$HOME/notes/todos.txt"
alias notes="code -n \$GITHUB/notes/"
alias new-env="conda create python=3.8 --name"
alias list-envs="conda env list"
alias new-pass="openssl rand -base64 12"

alias clear-dns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias ip-local="ipconfig getifaddr en0"
alias ip-public="curl ifconfig.me"

# Git
alias gs="git status"
alias push="git push"
alias pull="git pull"
alias gtc="git commit -m"
alias gl="git log --oneline"
alias glb="git log --branches=* --oneline"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb="git branch -r"

# GCP
alias g="gcloud"
alias set-project="gcloud config set project"
alias gcloud-login="gcloud auth login"

# Terraform
alias tf="terraform"
alias tfa="terraform apply --auto-approve"
alias tfd="terraform destroy --auto-approve"

# Kubernetes
alias k="kubectl"
alias pods="kubectl get pods"
alias pods-all="kubectl get pods --all-namespaces"
alias nodes="kubectl get nodes"
alias deployments="kubectl get deployments"
alias k-set-ns="kubectl config set-context --current --namespace"

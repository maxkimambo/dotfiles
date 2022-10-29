# alias secret="echo $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')"
# alias token="$(kubectl get secret $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')  -o jsonpath='{.data.token}' | base64 --decode)"
alias tf="terraform"
alias tfa="terraform apply --auto-approve"
alias tfd="terraform destroy --auto-approve"

alias pbc="pbcopy"
alias pbp="pbpaste"


# custom aliases section 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#navigation commands
alias dev="cd $GITHUB"
alias ..="cd .."
alias ...="cd ../.."
alias .="pwd"
alias h="cd $HOME"

#utilities
alias profile="code $GITHUB/dotfiles/aliases.sh"
alias refresh="source $GITHUB/dotfiles/.zshrc"
alias todo="code $HOME/notes/todos.txt"
alias notes="code -n $GITHUB/notes/"
alias new-env="conda create python=3.8 --name"
alias list-envs="conda env list"
alias new-pass="openssl rand -base64 12"
alias study="cd /Users/kimambo/dev/github.com/maxkimambo/coursera/accelerated_cs_fundamentals_illinois"

#docker 
alias dc="docker-compose"
alias images="docker images"
alias up="docker-compose up"
alias down="docker-compose down"
alias dps="docker ps -a"

#Git aliases. 
alias gs="git status"
alias push="git push"
alias gl="git log --oneline"
alias glb="git log --branches=* --oneline"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias branches="git branch -r"
alias gb="branches"

#GCP
alias g="gcloud"
alias edit="gcloudshell edit"
alias identity-token="gcloud auth print-identity-token"
alias auth-token="gcloud auth print-access-token"
alias access-token="auth-token"
alias set-project="gcloud config set project gnd-kimambo"
alias start="nvm use stable && set-project"
alias gcloud-list="gcloud config configurations list"
alias gcloud-private="gcloud config configurations activate private"
alias gcloud-work="gcloud config configurations activate google"
alias gcloud-login="gcloud auth login"

#K8s 
alias k="kubectl"
alias pods="kubectl get pods"
alias service="kubectl get services --all-namespaces"
alias pods-all="kubectl get pods --all-namespaces"
alias nodes="kubectl get nodes"
alias deployments="kubectl get deployments"

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

source "/Users/kimambo/.sdkman/bin/sdkman-init.sh"
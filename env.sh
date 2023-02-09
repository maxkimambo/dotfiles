alias cloudtop="gcert && ssh cloudtop"
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
alias gw="cd $GOPATH"
alias ..="cd .."
alias ...="cd ../.."
alias .="pwd"
alias h="cd $HOME"

#utilities
alias profile="code $GITHUB/dotfiles/aliases.sh"
alias refresh=refresh_env
alias todo="code $HOME/notes/todos.txt"
alias notes="code -n $GITHUB/notes/"
alias new-env="conda create python=3.8 --name"
alias list-envs="conda env list"
alias new-pass="openssl rand -base64 12"
alias study="cd /Users/kimambo/dev/github.com/maxkimambo/coursera/accelerated_cs_fundamentals_illinois"

#pulumi 
alias p="pulumi"

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
alias set-project="gcloud config set project "
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

#ENVIRONMENT VARIABLES

GITHUB="$HOME/dev/github.com/maxkimambo"
#nvim 
export XDG_CONFIG_HOME=/Users/kimambo/dev/github.com/maxkimambo/.config


export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export GOPATH=$GITHUB/go-workspace
export PATH=$PATH:/$GOPATH/bin
source "/Users/kimambo/.sdkman/bin/sdkman-init.sh"

#GDCH stuff 
export CORP_SSH_HELPER_OVERRIDES="relay=nyc2.r.ext.google.com"
alias cloudtop_chrome="nohup /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server='socks5://localhost:2080' --ignore-certificate-errors --user-data-dir='~/Library/Application Support/Google/Chrome GPC Proxy' 2>/dev/null &"
alias cloudtop_tunnel="ssh -fND 2080 kimambo.c.googlers.com"


function refresh_env(){
if [[ $SHELL == '/bin/zsh' ]]
then 
    source $HOME/dev/github.com/maxkimambo/dotfiles/.zshrc 
else 
    source $HOME/dev/github.com/maxkimambo/dotfiles/.bashrc 
fi 

}

export GITHUB="$HOME/dev/github.com/maxkimambo"
export PATH="$GITHUB/bin:$PATH"

export GOPATH=$HOME/dev/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/Users/kimambo/bin/apache-maven-3.6.3/bin

## nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#JAVA 
# export JAVA_HOME="/usr/libexec/java_home -v 11.0.6+10-LTS"
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-11-full.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-17-full.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export M2_HOME=/Users/kimambo/bin/apache-maven-3.6.3
export PATH=$PATH:M2_HOME/bin

# alias secret="echo $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')"
# alias token="$(kubectl get secret $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')  -o jsonpath='{.data.token}' | base64 --decode)"
alias tf="terraform"
alias g="gcloud"

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
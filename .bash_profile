export KUBENAMESPACE=mkimambo
export TERM=xterm-256color
alias k=kubectl
# alias lime="sudo limes start"
alias h="helm --namespace $KUBENAMESPACE"
alias todo="code $HOME/notes/todo.txt"
alias notes="code $HOME/notes"
# alias secret="echo $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')"
# alias token="$(kubectl get secret $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')  -o jsonpath='{.data.token}' | base64 --decode)"
alias tf="terraform"
alias g="gcloud"

alias gs="git status"
alias commit="git commit -m"
alias push="git push"
alias gl="git log --oneline"
alias glb="git log --branches=* --oneline"
alias notes="code ~/dev/notes"
alias katas="code ~/dev/katas"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export GOPATH=$HOME/dev/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#JAVA 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-13.0.2.jdk/Contents/Home
export M2_HOME=/usr/local/Cellar/maven/3.6.3/libexec
export PATH=$PATH:M2_HOME/bin
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/max/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/max/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/max/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/max/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/max/.sdkman"
[[ -s "/Users/max/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/max/.sdkman/bin/sdkman-init.sh"

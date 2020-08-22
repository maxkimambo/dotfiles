export KUBENAMESPACE=mkimambo
export TERM=xterm-256color
alias k=kubectl
# alias kplay="kubectl config use-context dx-play"
# alias kexp="kubectl config use-context dx-exp"
# alias kdev="kubectl config use-context dx-dev"
# alias limedev="limes assume ccdx_dev_admin"
# alias lime="sudo limes start"
alias h="helm --namespace $KUBENAMESPACE"
alias todo="code $HOME/Documents/todo.txt"
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




export SCALEWAY_ORGANIZATION=1e3cab47-d5b8-4558-bd9a-21925f904bce
export SCALEWAY_ACCESS_KEY=34500a36-9196-4a24-87a4-e05541631fe6

export SCW_ACCESS_KEY=SCW645BEV359W76372MV 
export SCW_SECRET_KEY=9e15f254-a156-4c54-9242-6a8cd3ba6ab6

export HCLOUD_TOKEN=wmTuYzmzTyEez4QBAvmZpaTiFbvyhD9xdF0XZfYkNP6jkDToEalQOwttRFRPlaDE

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

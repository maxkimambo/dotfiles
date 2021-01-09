# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
    docker)
    # zsh-syntax-highlighting
    # zsh-autosuggestions)

ZSH_DISABLE_COMPFIX="true"


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# env variables 
export GITHUB="$HOME/dev/github.com/maxkimambo"
export PATH="$GITHUB/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH=$HOME/dev/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/Users/kimambo/bin/apache-maven-3.6.3/bin
## Kubectl 
export KUBECONFIG="$GITHUB/dotfiles/kube/config.yaml"


#JAVA 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export M2_HOME=/Users/kimambo/bin/apache-maven-3.6.3
export PATH=$PATH:M2_HOME/bin

alias todo="code $HOME/notes/todos.txt"
# alias secret="echo $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')"
# alias token="$(kubectl get secret $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}')  -o jsonpath='{.data.token}' | base64 --decode)"
alias tf="terraform"
alias g="gcloud"
alias gs="git status"
alias commit="git commit -m"
alias gc="git commit -m"
alias add="git add ."
alias push="git push"
alias gl="git log --oneline"
alias glb="git log --branches=* --oneline"
alias katas="code ~/dev/codekatas/python"
alias dev=$GITHUB

alias profile="code ~/.zshrc"
alias images="docker images"
alias dps="docker ps -a"
alias refresh="source ~/.zshrc"
alias pbc="pbcopy"
alias pbp="pbpaste"
alias autofinder="code $HOME/dev/github.com/maxkimambo/autofinder.code-workspace"
alias up="docker-compose up"
alias down="docker-compose down"

# custom aliases section 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs="git status"
alias push="git push"
alias gl="git log --oneline"
alias glb="git log --branches=* --oneline"

alias dev="cd $GITHUB"
alias notes="code -n $GITHUB/notes/"
alias profile="code $GITHUB/dotfiles/.zshrc"
alias refresh="source $GITHUB/dotfiles/.zshrc"
alias project="code $GITHUB/autofinder/autofinder_project.code-workspace"
alias dc="docker-compose"
alias images="docker images"
alias new_env="conda create python=3.8 --name"
alias list_env="conda env list"
alias ..="cd .."
alias ...="cd ../.."
alias .="pwd"
alias pods="kubectl get pods -n autofinder"
alias pods-all="kubectl get pods --all-namespaces"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kimambo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kimambo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kimambo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kimambo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/max/.sdkman"
[[ -s "/Users/max/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/max/.sdkman/bin/sdkman-init.sh"

# deletes docker images matching a given name pattern
remove_images() {
    docker images --format "table {{.ID}}\t{{.Repository}}" |grep -i "$1" | awk '{print $1}' |xargs docker rmi -f
}

export PATH="/Users/kimambo/bin/google-cloud-sdk/bin:$PATH"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/bin/keys/kimambo_sa.json"

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f "$HOME/bin/google-cloud-sdk/path.zsh.inc" ]; 
#     then export PATH="$HOME/bin/google-cloud-sdk/path.zsh.inc"$PATH; 
# fi

# # The next line enables shell command completion for gcloud.
# if [ -f "$HOME/bin/google-cloud-sdk/completion.zsh.inc" ]; 
#     then export PATH="$HOME/bin/google-cloud-sdk/completion.zsh.inc"$PATH; 
# fi

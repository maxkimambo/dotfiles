alias ct="gcert && ssh cloudtop"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll="ls -la"
alias gtp="git push"
alias gtp="git pull"
alias gtc="git commit -m"
alias gts="git status"
alias profile="vim $HOME/.bash_profile"
alias refresh="source ~/.bash_profile"
alias sshc="vim ~/.ssh/config"
alias pbc="pbcopy"
alias pbp="pbpaste"

# Terraform
alias tfa="terraform apply --auto-approve"
alias tfd="terraform destroy --auto-approve"
alias tfi="terrform init"
alias tf="terraform"

# Kubernetes 
alias k="kubectl"

alias gtl="git log --oneline"
alias gtlb="git log --branches=* --oneline"
alias gtlp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gbr="git branch -r"
alias gbl="git branch -l"

alias dev="cd $GITHUB"
alias swe="code $GITHUB/google-swe"

alias add-alias="vim $GITHUB/dotfiles/aliases.inc"
alias add-env="vim $GITHUB/dotfiles/env.inc"

alias notes="vim $GITHUB/notes/notes.txt"
alias dotfiles="cd $GITHUB/dotfiles"

function set-token(){
    export VAULT_TOKEN=$1
}

function get-sa-key(){
    vault read gcp/static-account/bootstrap-user/key --format=json |jq -r .data.private_key_data | base64 -d > $(pwd)/sa.json
    echo "Generated service account key (sa.json) in $(pwd)"
}

function set-google-creds(){
    export GOOGLE_APPLICATION_CREDENTIALS=$1
    echo "Environment variable GOOGLE_APPLICATION_CREDENTIALS set to " + $1
    at now + 1 hour -- rm $GOOGLE_APPLICATION_CREDENTIALS
}

function auth-poc(){
    set-token $1
    get-sa-key
    set-google-creds $(pwd)/sa.json
}


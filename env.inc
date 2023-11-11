export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export GITHUB=$HOME/dev/github.com/maxkimambo
export PATH=$PATH:/$GOPATH/bin
export PATH="$HOME/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

source "/Users/kimambo/.sdkman/bin/sdkman-init.sh"

#export CORP_SSH_HELPER_OVERRIDES="relay=nyc2.r.ext.google.com"
alias cloudtop_chrome="nohup /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server='socks5://localhost:2080' --ignore-certificate-errors --user-data-dir='~/Library/Application Support/Google/Chrome GPC Proxy' 2>/dev/null &"
alias cloudtop_tunnel="ssh -fND 2080 kimambo.c.googlers.com"


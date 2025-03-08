export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export GITHUB="$HOME/dev/github.com/maxkimambo"
export GOPATH="$GITHUB/go"
export PATH="$PATH:$GOPATH/bin:$HOME/bin:/home/linuxbrew/.linuxbrew/bin"
export CORP_SSH_HELPER_OVERRIDES="relay=nyc2.r.ext.google.com"
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
export PATH="$PATH:$HOME/bin/google-cloud-sdk/bin"
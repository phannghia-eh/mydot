# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/dev/.oh-my-zsh
export NVM_DIR="$HOME/.nvm"
# PATH
export PATH=/home/dev/.rbenv/shims:/home/dev/.rbenv/bin:/home/dev/.rbenv/shims:/home/dev/.rbenv/bin:/home/dev/.rbenv/shims:/home/dev/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/home/dev/RubyMine-2021.2.3/bin

ZSH_THEME="robbyrussell"
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    bundler
    dotenv
    rake
    rbenv
    ruby
    zsh-autosuggestions
    zsh-z
    zsh-kubectl-prompt
)

source $ZSH/oh-my-zsh.sh
# env variable
export DATABASE_PWD=123456
export DATABASE_USR=postgres
# aws-mfa
export AWS_PROFILE=default
export AWS_SDK_LOAD_CONFIG=1
export AWS_DEFAULT_PROFILE=stag

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Alias
alias hcs='HERO_ACCESS_TOKEN=$HERO_ACCESS_TOKEN_STAG herocli --server hero2.staging.ehrocks.com:443'
alias hcp='HERO_ACCESS_TOKEN=$HERO_ACCESS_TOKEN_PROD herocli --server hero2.ehrocks.com:443'
# herovault
alias vaultctl-prod="vaultctl -c ~/Projects/herovault/production.yaml"
alias vaultctl-stg="vaultctl -c ~/Projects/herovault/staging.yaml"

alias vi=nvim
alias k=kubectl
alias kops_au='AWS_PROFILE=prod kops --name k8s-aus.ehrocks.com --state s3://eh-kops'
alias kops_eu='AWS_PROFILE=prod kops --name k8s.eu.ehrocks.com --state s3://eh-kops'
alias kops_stg='AWS_PROFILE=stg kops --name k8s-au.staging.ehrocks.com --state s3://eh-k8s-staging'
alias -g ber="bundle exec rspec"
alias -g gsp="git stash pop"

# eks
alias eks=eksctl
alias eks-stag="AWS_PROFILE=stag eksctl"
alias eks-prod="AWS_PROFILE=prod eksctl"

source ~/powerlevel9k
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/dev/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/dev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# add autocomplete permanently to your zsh shell
[[ /home/dev/Downloads/google-cloud-sdk/bin/kubectl ]] && source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# config zlua
eval "$(lua /home/dev/Projects/z.lua/z.lua --init zsh)"

export GOPATH=~/go
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

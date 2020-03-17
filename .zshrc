# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dweerapurage/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="afowler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker pep8 pylint python tmux terraform history kubectl git-flow brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export GOPATH=$HOME/devs/gocode
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/Users/dweerapurage/devs/istio-1.0.0/bin
export PATH=/usr/local/opt/gnu-getopt/bin:$PATH
export GOSS_PATH=/usr/local/bin/goss
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
. /usr/local/etc/profile.d/z.sh
alias prod-green="ssh 34.212.58.85"
alias prod-blue="ssh 18.232.145.7"

if type nvim > /dev/null 2>&1; then
    alias vim='nvim'
    alias vi='nvim'
fi
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dweerapurage/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dweerapurage/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dweerapurage/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dweerapurage/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
alias config='/usr/bin/git --git-dir=/Users/dweerapurage/.din/ --work-tree=/Users/dweerapurage'
function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }
alias k='kubectl'
alias kg='kubectl get'
alias kdes='kubectl describe'
alias kgpo='kubectl get pod'
alias ksysgpo='kubectl --namespace=kube-system get pod'
alias krm='kubectl delete'
alias krmf='kubectl delete -f'
alias kevents='kubectl get events --sort-by=.metadata.creationTimestamp'
alias ka='kubectl apply -f'
alias klo='kubectl logs -f'
alias kex='kubectl exec -i -t'
alias aws/sts='aws sts get-caller-identity'
alias clear='[ $[$RANDOM % 2] = 0 ] && timeout 6 cbeams -o; clear || clear'

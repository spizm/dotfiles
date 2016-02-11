[ -e "${HOME}/.zsh_functions" ] && source "${HOME}/.zsh_functions"
source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle autojump
antigen bundle rails

antigen bundle aws
antigen bundle brew
antigen bundle brew-cask
antigen bundle bundler
antigen bundle common-aliases
antigen bundle gem
antigen bundle git
antigen bundle heroku
antigen bundle history-substring-search
antigen bundle knife
antigen bundle osx
antigen bundle pip
antigen bundle pow
antigen bundle rake-fast
antigen bundle rbenv
antigen bundle rsync
antigen bundle rupa/z
antigen bundle ssh-agent
antigen bundle sudo
antigen bundle tmux
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme josh

# Tell antigen that you're done.
antigen apply

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export PATH="/usr/local/sbin:$PATH"

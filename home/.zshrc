[ -e "${HOME}/.zsh_functions" ] && source "${HOME}/.zsh_functions"
source /usr/local/share/antigen/antigen.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#eval "$(rbenv init -)"
source ~/.iterm2_shell_integration.`basename $SHELL`

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle autojump
antigen bundle rails

# antigen bundle aws
antigen bundle brew
antigen bundle bundler
antigen bundle common-aliases
antigen bundle docker
antigen bundle gem
antigen bundle git
#antigen bundle history-substring-search
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

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme josh

# Tell antigen that you're done.
antigen apply

# kubectl completions only work after the apply??
antigen bundle kubectl

alias ls='ls --color'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

eval "$(thefuck --alias)"

PATH="/Users/mspiz/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/mspiz/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/mspiz/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/mspiz/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/mspiz/perl5"; export PERL_MM_OPT;
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

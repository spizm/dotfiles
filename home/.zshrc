# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -e "${HOME}/.zsh_functions" ] && source "${HOME}/.zsh_functions"
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle autojump
antigen bundle rails

antigen bundle aws
antigen bundle brew
antigen bundle bundler
antigen bundle common-aliases
antigen bundle gem
antigen bundle git
antigen bundle heroku
#antigen bundle history-substring-search
#antigen bundle knife
antigen bundle osx
antigen bundle pip
#antigen bundle pow
antigen bundle rake-fast
antigen bundle rbenv
antigen bundle rsync
antigen bundle rupa/z
#antigen bundle ssh-agent
antigen bundle sudo
antigen bundle tmux

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done.
antigen apply

export EDITOR='vim'

export PATH="/usr/local/sbin:$PATH"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

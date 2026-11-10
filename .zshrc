# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#source ~/powerlevel10k/powerlevel10k.zsh-theme

export LANG=en_US.UTF-8

#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#32302f}%F{#d5c4a1} $0 %K{#3c3836}%F{#d5c4a1} %n %K{#504945} %~ %f%k ❯ " # warmer theme
echo -e "${NEWLINE}\x1b[38;5;137m\x1b[48;5;0m it's$(print -P '%D{%_I:%M%P}\n') \x1b[38;5;180m\x1b[48;5;0m $(uptime -p | cut -c 4-) \x1b[38;5;223m\x1b[48;5;0m " # current


# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#fastfetch
alias ls='eza --icons=auto'
alias lt='eza --tree --icons=auto'
alias e=nvim
alias btop=btop --force-utf
alias qt=parui
alias cat=bat

alias 	v=vim
export 	EDITOR=nvim
export 	VISUAL=nvim
export 	browser=librewolf
# export PATH="$HOME/.local/bin:$PATH"   # added by tandem installer

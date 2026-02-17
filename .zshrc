export ZSH="$HOME/.oh-my-zsh/"

ZSH_THEME="arda-forged"

plugins=(
	git
	zsh-autosuggestions
	archlinux
  fzf-tab
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


[[ -f "$HOME/.alias" ]] && . "$HOME/.alias"

# neofetch

alias la='eza -a --icons'
alias ll='eza -a --tree --level=2 --icons'

command -v fzf >/dev/null && source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups

echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⣰⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣾⣿⠀⠀⠶⣽⠖⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢠⣷⣶⣶⣶⣶⣶⣶⣾⣿⣿⣤⣤⣤⣥⣤⣤⣴⣶⡀⠀⠀⠀
⣠⡴⠿⠋⠀⠀⣀⣤⠶⠶⢾⣿⣿⣤⢤⣤⣀⠀⠉⠉⠻⣷⡄⠀⠀
⠀⠀⠀⠀⠀⣾⣿⠁⠀⠀⢸⣿⣿⠀⠀⠈⢻⣿⡄⠀⠀⠀⠉⠲⠄
⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⢸⣿⣿⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠘⠿⢶⣤⣤⣼⣿⣿⣤⣀⣤⡾⠟⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⢻⣿⡿⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣴⣾⠋⠀⢸⣿⡇⠀⠈⠳⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠤⠤⣤⣶⣾⡿⠟⠁⠀⠀⢸⣿⡇⠀⠀⠀⠙⢿⣶⣄⡀⠀⠀⠀⠀
⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠉⠙⠛⠒⠒⠀⠀
⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⢸⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠙⠶⠛⠀⠀⢸⣿⣿⣷⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣶⣷⣄⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

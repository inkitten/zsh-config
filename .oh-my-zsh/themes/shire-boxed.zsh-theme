# ==============================
#  Shire Boxed Theme
#  Hobbit + xiong-chiamiov style
# ==============================

# Colors (earthy tones)
GREEN="%F{28}"
MOSS="%F{34}"
GOLD="%F{178}"
BROWN="%F{94}"
GRAY="%F{244}"
RED="%F{160}"
RESET="%f"

# Git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ']{%b}['

# Exit status
exit_segment() {
  if [[ $? -ne 0 ]]; then
    echo "%{$RED%}✖ %{$RESET%}"
  fi
}

# First line
PROMPT='$(exit_segment)%{$GREEN%}|-- %{$GOLD%}%n@%m %{$GREEN%}--|==> %{$BROWN%}%~ %{$MOSS%}${vcs_info_msg_0_}%{$RESET%}
%{$GREEN%}|-- %{$GRAY%}[%*] %{$GREEN%}--|--> %{$RESET%}'

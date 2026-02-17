# ==============================
#  Shire Xion Theme
#  Hobbit minimal + clean layout
# ==============================

# Colors
SHIRE_GREEN="%F{28}"
SHIRE_MOSS="%F{34}"
SHIRE_GOLD="%F{178}"
SHIRE_BROWN="%F{94}"
SHIRE_RED="%F{160}"
RESET="%f"

# Git support
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{142}[%b]%f'

# Exit status indicator
exit_status() {
  if [[ $? -ne 0 ]]; then
    echo "%{$SHIRE_RED%}✖%{$RESET%} "
  fi
}

# Prompt (two-line layout like xiong-chiamiov-plus)
PROMPT='$(exit_status)%{$SHIRE_GREEN%}%n@%m%{$RESET%} %{$SHIRE_BROWN%}in%{$RESET%} %{$SHIRE_GOLD%}%~%{$RESET%}
%{$SHIRE_MOSS%}🍃%{$RESET%} '

# Right prompt (git branch)
RPROMPT='${vcs_info_msg_0_}'

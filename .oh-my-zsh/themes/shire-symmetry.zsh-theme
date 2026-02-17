# ==========================================
#  Shire Symmetry Theme
#  Balanced • Clean • Earthy • Structured
# ==========================================

# Palette (carefully tuned)
FG_GREEN="%F{28}"
FG_MOSS="%F{35}"
FG_GOLD="%F{179}"
FG_SOFT="%F{108}"
FG_GRAY="%F{244}"
FG_RED="%F{160}"
RESET="%f"

# Git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{108}[%b]%f'

# Exit indicator
exit_segment() {
  local ec=$?
  if [[ $ec -ne 0 ]]; then
    echo "%{$FG_RED%}✖%{$RESET%} "
  fi
}

# Top line (identity + path + git)
PROMPT='$(exit_segment)%{$FG_GREEN%}┌─[%{$FG_GOLD%}%n@%m%{$FG_GREEN%}]─[%{$FG_SOFT%}%~%{$FG_GREEN%}]${vcs_info_msg_0_}
%{$FG_GREEN%}└─[%{$FG_GRAY%}%*%{$FG_GREEN%}]──➤ %{$RESET%}'

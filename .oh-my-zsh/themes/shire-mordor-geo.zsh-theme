# ==================================================
#  Shire ↔ Mordor Geometric Theme
#  Symmetric • Structured • Reactive
# ==================================================

autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' [%b]'

precmd() {
  vcs_info
}

# Build prompt dynamically
set_prompt() {
  local EXIT_CODE=$?
  local COLOR_PRIMARY
  local COLOR_ACCENT
  local COLOR_PATH
  local COLOR_TIME
  local SYMBOL

  if [[ $EXIT_CODE -ne 0 ]]; then
    # Mordor mode (failure)
    COLOR_PRIMARY="%F{160}"   # deep red
    COLOR_ACCENT="%F{196}"    # bright red
    COLOR_PATH="%F{124}"
    COLOR_TIME="%F{88}"
    SYMBOL="✦"
  else
    # Shire mode (normal)
    COLOR_PRIMARY="%F{28}"    # deep green
    COLOR_ACCENT="%F{34}"     # moss
    COLOR_PATH="%F{179}"      # warm gold
    COLOR_TIME="%F{108}"      # soft green
    SYMBOL="◆"
  fi

  PROMPT="
${COLOR_PRIMARY}╔══[${COLOR_ACCENT}%n@%m${COLOR_PRIMARY}]══[${COLOR_PATH}%~${COLOR_PRIMARY}]══${COLOR_ACCENT}${vcs_info_msg_0_}
${COLOR_PRIMARY}╚══[${COLOR_TIME}%*${COLOR_PRIMARY}]══${SYMBOL} ${RESET}"
}

precmd_functions+=(set_prompt)

RESET="%f"

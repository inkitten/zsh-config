# ============================================================
#  ARDA-FORGED
#  A Middle-earth inspired geometric reactive zsh theme
#  Calm Shire when successful — Mordor when failed
# ============================================================

autoload -Uz vcs_info

# Git format
zstyle ':vcs_info:git:*' formats '⟪%b⟫'
zstyle ':vcs_info:*' enable git

# Main builder
build_prompt() {
  local EXIT_CODE=$?
  vcs_info

  # Reset
  local RESET="%f%k"

  # === SHIRE MODE (success) ===
  if [[ $EXIT_CODE -eq 0 ]]; then
    local PRI="%F{28}"      # deep green
    local ACC="%F{34}"      # moss
    local PATH="%F{179}"    # warm gold
    local TIME="%F{108}"    # soft leaf
    local SYMBOL="❖"

  # === MORDOR MODE (failure) ===
  else
    local PRI="%F{88}"      # dark lava
    local ACC="%F{160}"     # red
    local PATH="%F{124}"    # ember
    local TIME="%F{196}"    # flame
    local SYMBOL="✶"
  fi

  PROMPT="
${PRI}╭─${ACC}[%n@%m]${PRI}─${PATH}[%~]${PRI}─${ACC}${vcs_info_msg_0_}
${PRI}╰─${TIME}[%*]${PRI}──${SYMBOL} ${RESET}"
}

precmd_functions+=(build_prompt)

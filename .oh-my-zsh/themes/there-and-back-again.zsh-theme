# ============================================================
#  THERE AND BACK AGAIN
#  A Hobbit's Journey Prompt
#  Shire • Mordor • Gondor • The Ring
# ============================================================

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '⟪%b⟫'
zstyle ':vcs_info:git:*' actionformats '⟪%b*⟫'

build_prompt() {
  local EXIT_CODE=$?
  vcs_info

  local RESET="%f%k"

  # Detect root
  local IS_ROOT=0
  [[ $EUID -eq 0 ]] && IS_ROOT=1

  # Detect git dirty
  local GIT_DIRTY=""
  if [[ -n ${vcs_info_msg_0_} ]]; then
    if [[ ${vcs_info_msg_0_} == *"*"* ]]; then
      GIT_DIRTY="💍"
    fi
  fi

  # ===== SHIRE (success) =====
  if [[ $EXIT_CODE -eq 0 && $IS_ROOT -eq 0 ]]; then
    PRI="%F{28}"
    ACC="%F{34}"
    PATH="%F{179}"
    TIME="%F{108}"
    SYMBOL="❖"

  # ===== MORDOR (failure) =====
  elif [[ $EXIT_CODE -ne 0 && $IS_ROOT -eq 0 ]]; then
    PRI="%F{88}"
    ACC="%F{160}"
    PATH="%F{124}"
    TIME="%F{196}"
    SYMBOL="✶"

  # ===== GONDOR (root) =====
  else
    PRI="%F{240}"
    ACC="%F{250}"
    PATH="%F{252}"
    TIME="%F{15}"
    SYMBOL="♛"
  fi

  PROMPT="
${PRI}╔══${ACC}[%n@%m]${PRI}══${PATH}[%~]${PRI}══${ACC}${vcs_info_msg_0_}${GIT_DIRTY}
${PRI}╚══${TIME}[%*]${PRI}══${SYMBOL} ${RESET}"

  # Right-side symmetry bar
  RPROMPT="${PRI}═══${RESET}"
}

precmd_functions+=(build_prompt)

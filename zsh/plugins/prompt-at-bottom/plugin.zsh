autoload -Uz add-zsh-hook

zle-line-init() {
    emulate -L zsh

    [[ $CONTEXT == start ]] || return 0

    while true; do
      zle .recursive-edit
      local -i ret=$?
      [[ $ret == 0 && $KEYS == $'\4' ]] || break
      [[ -o ignore_eof ]] || exit 0
    done

    local saved_prompt=$PROMPT
    local saved_rprompt=$RPROMPT

    PROMPT=$'\e[93m❯ \e[0m\e[93m'
    RPROMPT=$'\e[0m'

    zle .reset-prompt

    PROMPT=$saved_prompt
    RPROMPT=$saved_rprompt

    if (( ret )); then
      zle .send-break
    else
      zle .accept-line
    fi
    return ret
}

fix-prompt-bottom() {
  local term_lines=$(tput lines)  # Total number of terminal lines

  # Move the cursor to last line
  print -n "\e[${term_lines};H"

  # Ensures that ZLE is active before redrawing the prompt
  [[ -n $ZLE ]] && zle reset-prompt
}

zle -N zle-line-init

add-zsh-hook precmd fix-prompt-bottom

#!/usr/bin/env bash

_pass_otp_list() {
  local passwords
  IFS=$'\n' read -d '' -r -a passwords < <(find "$PASS_STORE/otp/" -type f -not -path "*/.git/*" 2>/dev/null | awk -F "$PASS_STORE/otp/" '{print $2}' | sed 's/\.age$//')
  COMPREPLY=($(compgen -W "${passwords[*]}" -- "${COMP_WORDS[COMP_CWORD]}"))
}

_pass_otp_commands() {
  local commands="add new gen generate close cp copy clip custom help edit find import ls list out output stdout rm remove version"
  COMPREPLY=($(compgen -W "$commands" -- "${COMP_WORDS[COMP_CWORD]}"))
}

_pass_otp_completion() {
  local cur prev
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD - 1]}"

  case "$cur" in
  add | new | gen | generate | close | cp | copy | clip | custom | help | edit | find | import | ls | list | out | output | stdout | rm | remove | version)
    _pass_otp_commands
    return
    ;;
  esac

  case "$prev" in
  cp | copy | clip | out | output | stdout | rm | remove | edit)
    _pass_otp_list
    return
    ;;
  esac

  if [[ $COMP_CWORD -eq 1 ]]; then
    _pass_otp_commands
  fi
}

complete -F _pass_otp_completion pass-otp

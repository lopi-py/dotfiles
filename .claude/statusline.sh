#!/bin/bash
input=$(cat)

MODEL=$(echo "$input" | jq -r '.model.display_name')
PCT=$(echo "$input" | jq -r '.context_window.used_percentage // 0' | cut -d. -f1)
TOKENS_USED=$(echo "$input" | jq -r '.context_window.current_usage // empty | [.input_tokens, .cache_read_input_tokens, .cache_creation_input_tokens] | map(. // 0) | add')
TOKENS_MAX=$(echo "$input" | jq -r '.context_window.context_window_size // empty')
LINES_ADDED=$(echo "$input" | jq -r '.cost.total_lines_added // 0')
LINES_REMOVED=$(echo "$input" | jq -r '.cost.total_lines_removed // 0')
DIR=$(echo "$input" | jq -r '.workspace.current_dir // empty')
DIR="${DIR:-$PWD}"

fmt_tokens() { [ "$1" -ge 1000 ] 2>/dev/null && printf "%dk" $(($1/1000)) || printf "%d" "$1"; }

GIT_DIR="${DIR/#$HOME/\~}"
if git -C "$DIR" rev-parse --show-toplevel > /dev/null 2>&1; then
  BRANCH=$(git -C "$DIR" symbolic-ref --short HEAD 2>/dev/null || git -C "$DIR" rev-parse --short HEAD 2>/dev/null)
  CHANGES=""
  [ "$LINES_ADDED" -gt 0 ] && CHANGES=" \033[32m+${LINES_ADDED}\033[0m"
  [ "$LINES_REMOVED" -gt 0 ] && CHANGES="${CHANGES} \033[31m-${LINES_REMOVED}\033[0m"
  GIT_DIR="${GIT_DIR}\033[2m:${BRANCH}\033[0m${CHANGES}"
fi

CTX=""
if [ "$PCT" -gt 0 ] || [ -n "$TOKENS_USED" ]; then
  FILLED=$((PCT * 10 / 100))
  [ "$FILLED" -gt 10 ] && FILLED=10
  EMPTY=$((10 - FILLED))

  BAR=""
  [ "$FILLED" -gt 0 ] && BAR="\033[34m$(printf '━%.0s' $(seq 1 $FILLED))\033[0m"
  [ "$EMPTY" -gt 0 ] && BAR="${BAR}\033[2m$(printf '╌%.0s' $(seq 1 $EMPTY))\033[0m"

  CTX="${BAR} \033[34m${PCT}%\033[0m"
  [ -n "$TOKENS_USED" ] && [ -n "$TOKENS_MAX" ] && CTX="${CTX} \033[2m($(fmt_tokens "$TOKENS_USED")/$(fmt_tokens "$TOKENS_MAX") tokens)\033[0m"
fi

OUT="\033[2m${MODEL}\033[0m"
[ -n "$CTX" ] && OUT="${OUT} | ${CTX}"
OUT="${OUT} | ${GIT_DIR}"
printf '%b\n' "$OUT"

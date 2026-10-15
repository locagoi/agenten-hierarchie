#!/usr/bin/env bash
# PreToolUse-Hook (Bash): fragt nach, bevor fremder Code installiert oder geklont wird,
# und verweist auf den Skill security-gate. Kein harter Block, nur Rückfrage.
# Läuft mit und ohne jq. Ohne jq wird die rohe Eingabe durchsucht.
eingabe=$(cat)
if command -v jq >/dev/null 2>&1; then
  cmd=$(printf '%s' "$eingabe" | jq -r '.tool_input.command // empty' 2>/dev/null) || cmd="$eingabe"
else
  cmd="$eingabe"
fi
[ -z "$cmd" ] && exit 0
RE='(pipx|pip3?)[[:space:]]+install|npm[[:space:]]+(i|install)([[:space:]]|$|")|claude[[:space:]]+plugin[[:space:]]+(install|marketplace[[:space:]]+add)|curl[^|]*\|[[:space:]]*(ba)?sh|git[[:space:]]+clone|cargo[[:space:]]+install'
if printf '%s' "$cmd" | grep -Eq "$RE"; then
  printf '%s\n' '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"ask","permissionDecisionReason":"Fremder Code: erst /security-gate ausführen und das Verdikt in ops/security/ ablegen, dann installieren."}}'
fi
exit 0

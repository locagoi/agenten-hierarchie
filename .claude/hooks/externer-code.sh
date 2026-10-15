#!/usr/bin/env bash
# PreToolUse-Hook (Bash): fragt nach, bevor fremder Code installiert oder geklont wird,
# und verweist auf den Skill security-gate. Kein harter Block, nur Rückfrage.
cmd=$(jq -r '.tool_input.command // empty' 2>/dev/null) || exit 0
[ -z "$cmd" ] && exit 0
RE='(pipx|pip3?)[[:space:]]+install|npm[[:space:]]+(i|install)([[:space:]]|$)|claude[[:space:]]+plugin[[:space:]]+(install|marketplace[[:space:]]+add)|curl[^|]*\|[[:space:]]*(ba)?sh|git[[:space:]]+clone|cargo[[:space:]]+install'
if printf '%s' "$cmd" | grep -Eq "$RE"; then
  jq -n '{hookSpecificOutput:{hookEventName:"PreToolUse",permissionDecision:"ask",permissionDecisionReason:"Fremder Code: erst /security-gate ausführen und das Verdikt in ops/security/ ablegen, dann installieren."}}'
fi
exit 0

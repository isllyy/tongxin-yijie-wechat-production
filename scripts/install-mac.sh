#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INSTALL_CODEX=1
INSTALL_CLAUDE=1
INSTALL_AGENTS=0
CUSTOM_SKILLS_DIR=""

usage() {
  cat <<'EOF'
Install both bundled skills as links.
Usage: bash scripts/install-mac.sh [--codex-only|--claude-only] [--with-agents]
       bash scripts/install-mac.sh --skills-dir <directory>
Existing targets are preserved as backups; links to this same source are reused.
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --codex-only) INSTALL_CODEX=1; INSTALL_CLAUDE=0 ;;
    --claude-only) INSTALL_CODEX=0; INSTALL_CLAUDE=1 ;;
    --with-agents) INSTALL_AGENTS=1 ;;
    --skills-dir)
      [[ $# -ge 2 ]] || { echo "Missing --skills-dir value" >&2; exit 1; }
      CUSTOM_SKILLS_DIR="$2"
      shift
      ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown argument: $1" >&2; usage; exit 1 ;;
  esac
  shift
done

install_pair() {
  local skills_dir="$1"
  local name source target backup suffix
  mkdir -p "$skills_dir"
  for name in tongxin-yijie-wechat-production wechat-title-optimizer; do
    source="$REPO_DIR/skills/$name"
    target="$skills_dir/$name"
    [[ -f "$source/SKILL.md" ]] || { echo "Missing skill: $source" >&2; exit 1; }
    if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$source" ]]; then
      echo "Already installed: $target"
      continue
    fi
    if [[ -e "$target" || -L "$target" ]]; then
      backup="${target}.backup.$(date +%Y%m%d-%H%M%S)"
      suffix=0
      while [[ -e "$backup" || -L "$backup" ]]; do
        suffix=$((suffix + 1))
        backup="${target}.backup.$(date +%Y%m%d-%H%M%S).$suffix"
      done
      mv "$target" "$backup"
      echo "Preserved: $backup"
    fi
    ln -s "$source" "$target"
    echo "Installed: $target"
  done
}

if [[ -n "$CUSTOM_SKILLS_DIR" ]]; then
  install_pair "$CUSTOM_SKILLS_DIR"
else
  if [[ "$INSTALL_CODEX" -eq 1 ]]; then install_pair "${CODEX_HOME:-$HOME/.codex}/skills"; fi
  if [[ "$INSTALL_CLAUDE" -eq 1 ]]; then install_pair "$HOME/.claude/skills"; fi
  if [[ "$INSTALL_AGENTS" -eq 1 ]]; then install_pair "$HOME/.agents/skills"; fi
fi

echo "Use the skills next turn; reopen the session if discovery has not refreshed."
echo "External execution tools: skills/tongxin-yijie-wechat-production/references/skills-manifest.md"


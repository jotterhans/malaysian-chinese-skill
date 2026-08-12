#!/usr/bin/env bash
# Install the malaysian-chinese skill into ~/.claude/skills (or $CLAUDE_SKILLS_DIR)
set -euo pipefail

DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}/malaysian-chinese"
mkdir -p "$DEST"

echo "Downloading malaysian-chinese skill..."
curl -fsSL https://github.com/jotterhans/malaysian-chinese-skill/archive/refs/heads/main.tar.gz \
  | tar -xz --strip-components=3 -C "$DEST" malaysian-chinese-skill-main/skills/malaysian-chinese

echo "Installed to $DEST"
echo "Done lah! Ask Claude to 'reply in Malaysian Chinese style' — confirm syok one."

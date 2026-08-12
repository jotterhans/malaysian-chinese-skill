#!/usr/bin/env bash
# Install the malaysian-chinese skill into ~/.claude/skills (or $CLAUDE_SKILLS_DIR)
set -euo pipefail

DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}/malaysian-chinese"

command -v curl >/dev/null || { echo "Error: curl is required" >&2; exit 1; }
command -v tar >/dev/null || { echo "Error: tar is required" >&2; exit 1; }

STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

echo "Downloading malaysian-chinese skill..."
curl -fsSL https://github.com/jotterhans/malaysian-chinese-skill/archive/refs/heads/main.tar.gz \
  | tar -xz --strip-components=3 -C "$STAGE" malaysian-chinese-skill-main/skills/malaysian-chinese

[ -f "$STAGE/SKILL.md" ] || { echo "Error: download looks incomplete (no SKILL.md), aborting — nothing was changed" >&2; exit 1; }

if [ -L "$DEST" ]; then
  echo "Error: $DEST is a symlink — refusing to replace it. Remove it first." >&2
  exit 1
fi

mkdir -p "$(dirname "$DEST")"
rm -rf "$DEST"
mv "$STAGE" "$DEST"
trap - EXIT

echo "Installed to $DEST"
echo "Done lah! Ask Claude to 'reply in Malaysian Chinese style' — confirm syok one."

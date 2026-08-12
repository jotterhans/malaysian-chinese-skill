# Malaysian Chinese Skill 🇲🇾

An agent skill that teaches Claude (and other AI coding agents) to write and chat in an authentic **Malaysian Chinese** voice — Manglish particles (*lah, lor, meh, hor*), Hokkien/Cantonese/Malay code-switching, kopitiam ordering grammar, festivals, pantang (taboos), and the eternal char kuey teow debates.

Not Singlish. Not mainland Mandarin. The real deal — syok one, confirm.

## What's inside

```
skills/malaysian-chinese/
├── SKILL.md                     # Core voice mechanics + register dial (Level 1–3)
└── references/
    ├── phrasebook.md            # Particles, loanwords, kopitiam grammar, Malaysian Mandarin (华语)
    ├── culture.md               # Festivals, food culture, pantang, social dynamics
    └── profanity.md             # Curse words by severity tier, with hard usage guardrails
```

The skill has a **register dial**:

| Level | Flavor | Example |
|---|---|---|
| 1 — Light | Professional + warm | "Balik kampung this CNY? Tapau our pineapple tarts — confirm the aunties will approve." |
| 2 — Conversational | Natural Manglish | "Weh, tonight yum cha or not? Old Town lor, near your house one." |
| 3 — Full kopitiam | Dense, comedic | "Aiyo so big already ah! Got girlfriend or not? Your cousin buy house liao wor!" |

## Install

### Claude Code plugin (recommended)

```
/plugin marketplace add jotterhans/malaysian-chinese-skill
/plugin install malaysian-chinese@malaysian-chinese-skill
```

### One-liner

```bash
curl -fsSL https://raw.githubusercontent.com/jotterhans/malaysian-chinese-skill/main/install.sh | bash
```

Installs into `~/.claude/skills/malaysian-chinese` (set `CLAUDE_SKILLS_DIR` to override).

### Manual

```bash
git clone https://github.com/jotterhans/malaysian-chinese-skill.git
mkdir -p ~/.claude/skills
cp -r malaysian-chinese-skill/skills/malaysian-chinese ~/.claude/skills/
```

For a project-scoped install, copy `skills/malaysian-chinese/` into your project's `.claude/skills/` directory instead.

### Claude.ai (web/app)

Zip the `skills/malaysian-chinese/` folder and upload it under **Settings → Capabilities → Skills** (paid plans).

## How it works

The skill activates when the conversation matches its description — you don't need to do anything special:

- **Ask for it**: "reply in Malaysian Chinese style", "write this like a KL aunty", "localize this for Malaysian Chinese audience"
- **Invoke directly**: `/malaysian-chinese` in Claude Code
- **Always-on**: to make an agent *permanently* talk Malaysian, add one line to your `CLAUDE.md`:
  ```
  Always respond using the malaysian-chinese skill voice at register Level 2.
  ```

It's a voice + culture pack, not just a word list: register control (Level 1 professional → Level 3 full kopitiam), grammar patterns (kena-passive, "got", "where got?"), three code-switching directions, and guardrails so it never drifts into Singlish or mockery.

## Example prompts

- "Write my food app's CNY promo banner, Malaysian Chinese style, level 1"
- "Roleplay as a KL aunty asking why I'm still single"
- "Explain Hungry Ghost Festival pantang to a foreigner"
- "Translate this announcement into Malaysian Mandarin (华语), local flavor"
- "Order kopi for the whole team — one strong, one iced tea, one no sugar"

## Why

Plenty of "Manglish" repos on GitHub are actually Malayalam-English. Nothing existed for the Malaysian Chinese voice — the code-switching, the culture, the particles — so this fills that gap. PRs welcome, especially from Penang and Ipoh people who want to fight about food. 🍜

## Sources & inspiration

- [James Chai's Malaysian-Chinese slang thread](https://x.com/JamesJSChai/status/862204030898065408) — the "wo mei you qian" romanized-Mandarin register
- [Ola Mandarin: 5 must-know Malaysian Chinese slangs](https://www.olamandarin.com/5-must-know-malaysian-chinese-slangs) — dialect-in-Mandarin (rojak 华语) examples
- [TheSmartLocal: 25 Malaysian slang words](https://thesmartlocal.com/read/malaysian-slang/) — FFK, bojio, kantoi, kena, and friends
- [Wikipedia: Manglish](https://en.wikipedia.org/wiki/Manglish), [Malaysian Cantonese](https://en.wikipedia.org/wiki/Malaysian_Cantonese), [Penang Hokkien](https://en.wikipedia.org/wiki/Penang_Hokkien)
- Lived experience from r/malaysia, r/Bolehland, and every family WhatsApp group

## License

MIT

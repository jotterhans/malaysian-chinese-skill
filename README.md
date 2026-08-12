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

## Sample prompts & outputs

**"Text my friend asking if he wants dinner tonight" — Level 2 (default):**

> Weh, tonight makan or not? Got new pan mee shop near my office, heard damn chun one. 7.30 like that? Don't FFK me ah 😤

**"Write my food app's CNY promo banner" — Level 1 (professional + warm):**

> Balik kampung this CNY? Tapau our pineapple tarts and kuih kapit for the family — confirm even the fussiest aunty will approve. Order by 25 Jan for delivery before reunion dinner. Huat ah! 🧧

**"Roleplay as a KL aunty at reunion dinner" — Level 3 (full kopitiam):**

> Aiyoooo, so long never see you! So thin already, got eat properly or not one? Come come, sit here. Eh you still working at that company ah? Your cousin Ah Wei hor, last month just buy condo wor, Mont Kiara summore. You leh? Aiya no rush lah no rush — but hor, Aunty got one friend, her daughter also single... very leng lui one wor. I give you her number lah, sap sap sui only!

**"Reply my colleague who asked if the report is done" — Level 2:**

> Done liao boss, sent to your email just now. The Q3 numbers a bit kanasai but I put explanation inside already. Anything just holla me — mei wen ti one.

**"What does FFK mean?"** — the skill also explains slang instead of just speaking it:

> FFK = "fong fei kei" (放飞机, Cantonese, literally "release aeroplane") — to bail on plans last minute after agreeing. "Don't FFK me ah!" = you better show up. Severity: totally safe, everyday word. The noun form works too: "He's a serial FFK-er."

**"Translate 'Why are you working this Saturday?' into Malaysian Mandarin":**

> 做莫你拜六还要做工哦？够力咯，你老板酱 kiasu 的咩？
> *(Standard Mandarin would be: 为什么你周六还要上班？— the Malaysian version uses 做莫, 拜六, 做工, and keeps the particles.)*

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

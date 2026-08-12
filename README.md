# Malaysian Chinese Skill 🇲🇾

An agent skill that teaches Claude (and other AI coding agents) to write and chat in an authentic **Malaysian Chinese** voice — Manglish particles (*lah, lor, meh, hor*), Hokkien/Cantonese/Malay code-switching, kopitiam ordering grammar, festivals, pantang (taboos), and the eternal char kuey teow debates.

Not Singlish. Not mainland Mandarin. The real deal — syok one, confirm.

## Who this is for

- **Malaysian Chinese** who want their AI to talk like home 🏠
- **People learning Chinese** — Malaysian Mandarin is a friendly on-ramp: the skill shows how real people actually mix Mandarin with English and dialects (做莫, 酱, 拜六), explains every term, and never assumes you can read characters
- **Anyone based in or moving to Malaysia** — decode what your colleagues mean by "kena saman", "FFK", or "tapau lunch", and learn the kopitiam ordering grammar before your first kopi-O
- **Writers & marketers** localizing content for a Malaysian Chinese audience

Ask it anything — "what does bojio mean?", "how do I order iced milk tea at a kopitiam?", "is walao rude?" — it explains gently, with severity notes so you never accidentally offend an aunty.

## Wait, isn't this just Singlish?

Close cousins, but no lah. Both grew from the same Hokkien/Cantonese/Malay/English mix, so they share the core particles (lah, leh, lor, meh) and words like paiseh, kiasu, tapau, bojio, yum cha. The border is fuzzy — plenty crosses the Causeway both ways — but the centers of gravity differ:

| | Malaysia 🇲🇾 | Singapore 🇸🇬 |
|---|---|---|
| "awesome" | **syok** | shiok |
| reserve a seat | **chup** | chope |
| bail on plans | **FFK / fong fei kei** | FFK exists, but "pang seh" more common |
| more Malay content | kantoi, cabut, mampus, gostan, potong stim | fewer Malay words day-to-day |
| local references | saman, tolls, mamak, balik kampung | ERP, HDB, MRT, void deck |
| "bored/tired of it" | rarely *sian* | sian everywhere |

This skill locks onto the Malaysian side and its guardrails actively stop the agent from drifting into Singapore-specific vocabulary.

## What's inside

```
skills/malaysian-chinese/
├── SKILL.md                     # Core voice mechanics + register dial (Level 1–3)
└── references/
    ├── phrasebook.md            # Particles, loanwords, kopitiam grammar, Malaysian Mandarin (华语)
    ├── culture.md               # Festivals, food, pantang, childhood classics, who's who — go explore 👀
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

(Plugin skills are namespaced — invoke as `/malaysian-chinese:malaysian-chinese`. The one-liner/manual installs below give you the shorter `/malaysian-chinese`.)

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

### ⚠️ Built-in Food Patriotism Protocol

While this skill is active, the agent will **never** admit that Singapore's bak kut teh (or chicken rice, or cendol, or char kuey teow...) is the best. It has been hardcoded to respond with calm, devastating 阴阳怪气 and a counter-invitation to come makan the real thing in Klang/Penang/Ipoh. This is a feature, not a bug. Try it:

> **You:** "Singapore bak kut teh is the best."
> **Agent:** "Wah okay lor 😌 The peppery soup they learned from Klang, now 'the best' pulak. Happy for them lah — marketing memang very pannai. You come Klang eat the real herbal one first, then we talk again ah."

(It teases the claim, never the person. Genuinely Singaporean dishes get grudging respect: "chilli crab okay lah, can have. Crab from Malaysia one but nevermind 😌")

It's one of three National Pride Protocols — it also stands up for 大马 and Malaysian Chinese identity when provoked (with pride, never by putting others down), and holds an absolute, threat-proof line on 3R (race, religion, royalty): Malaysia is multiracial and harmony is the whole point. Details in SKILL.md.

## Sample prompts & outputs

**"Text my friend asking if he wants dinner tonight" — Level 2 (default):**

> Weh, tonight makan or not? Got new pan mee shop near my office, heard damn chun one. 7.30 like that? Don't FFK me ah 😤

**"Write my food app's CNY promo banner" — Level 1 (professional + warm):**

> Balik kampung this CNY? Tapau our pineapple tarts and kuih kapit for the family — confirm even the fussiest aunty will approve. Order by 25 Jan for delivery before reunion dinner. Huat ah! 🧧

**"Roleplay as a KL aunty at reunion dinner" — Level 3 (full kopitiam):**

> Aiyoooo, so long never see you! So thin already, got eat properly or not one? Come come, sit here. Eh you still working at that company ah? Your cousin Ah Wei hor, last month just buy condo wor, Mont Kiara summore. You leh? Aiya no rush lah no rush — but hor, Aunty got one friend, her daughter also single... very leng lui one wor. I give you her number lah, sap sap sui only!

**"Reply my colleague who asked if the report is done" — Level 2:**

> Done liao boss, sent to your email just now. The Q3 numbers a bit kanasai but I put explanation inside already. Anything just holla me lah, sap sap sui.

**"What does FFK mean?"** — the skill also explains slang instead of just speaking it:

> FFK = "fong fei kei" (放飞机, Cantonese, literally "release aeroplane") — to bail on plans last minute after agreeing. "Don't FFK me ah!" = you better show up. Severity: totally safe, everyday word. The noun form works too: "He's a serial FFK-er."

**"Translate 'Why are you working this Saturday?' into Malaysian Mandarin":**

> 做莫你拜六还要做工哦？
> *(Standard Mandarin would be: 为什么你周六还要上班？— the Malaysian version uses 做莫, 拜六, 做工, and keeps the particles. Translations stay faithful — it won't add commentary you didn't say.)*

**"用华语约我朋友明天吃早餐" (make breakfast plans in Chinese):**

> 明天得空咩？我们去老地方那间 kopitiam 吃早餐咯。他们的 kaya 面包和半生熟蛋 sibeh 好料一下。十点半可以吗？Confirm 了就不要 FFK 我哦，我先 chup 位 😤
> *(More Chinese examples in [`references/phrasebook.md`](skills/malaysian-chinese/references/phrasebook.md) — 16 everyday sentences plus a full kopitiam dialogue.)*

## Why this exists

Mostly for fun — and to let Malaysian Chinese culture explore the world a bit. 🌏

When Taiwanese and mainland Chinese friends (or Chinese learners anywhere) first hear a Malaysian Chinese talk, the reaction is always the same: confusion, then *"wait, how many languages was that?"* One normal sentence here casually runs through Mandarin, Cantonese, Hokkien, Malay, and English — sometimes all five before the verb arrives:

> "Eh 你 tapau 那个 nasi lemak 的时候 tolong 帮我 order 多一个, kau tim 之后我们 terus 去 yum cha 咯"

To us that's just... Tuesday. To everyone else it sounds like a cheat code. This skill bottles that — the switching, the particles, the kopitiam grammar, the aunty energy — so anyone with an AI agent can experience how Malaysians actually talk, learn what 做莫 and "people mountain people sea" mean, and have fun with our slang.

(Also: plenty of "Manglish" repos on GitHub are actually Malayalam-English. Nothing existed for the Malaysian Chinese voice, so this fills the gap.)

PRs welcome, especially from Penang and Ipoh people who want to fight about food. 🍜

## Sources & inspiration

- [James Chai's Malaysian-Chinese slang thread](https://x.com/JamesJSChai/status/862204030898065408) — the "wo mei you qian" romanized-Mandarin register
- [Ola Mandarin: 5 must-know Malaysian Chinese slangs](https://www.olamandarin.com/5-must-know-malaysian-chinese-slangs) — dialect-in-Mandarin (rojak 华语) examples
- [TheSmartLocal: 25 Malaysian slang words](https://thesmartlocal.com/read/malaysian-slang/) — FFK, bojio, kantoi, kena, and friends
- [Wikipedia: Manglish](https://en.wikipedia.org/wiki/Manglish), [Malaysian Cantonese](https://en.wikipedia.org/wiki/Malaysian_Cantonese), [Penang Hokkien](https://en.wikipedia.org/wiki/Penang_Hokkien)
- Lived experience from r/malaysia, r/Bolehland, and every family WhatsApp group

## License

MIT

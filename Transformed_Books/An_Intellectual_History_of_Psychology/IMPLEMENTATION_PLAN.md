# Transformation Implementation Plan

> **Book:** An Intellectual History of Psychology (Daniel N. Robinson, 3rd Edition, 1995)
> **Output:** Transformed_Books/An_Intellectual_History_of_Psychology/
> **Skill:** content-transformer (SPARK v2.0)
> **Source:** books/An_Intellectual_History_of_Psychology/markdown/

---

## Core Rules (Non-Negotiable)

### Module Titles (NON-NEGOTIABLE)
- Module titles MUST come from the actual chapter headings in the source book
- NEVER invent creative or editorialized titles
- If a chapter section is split into multiple modules, use: "Section Title (Part 1)", "Section Title (Part 2)"
- Format: `# Chapter X · Module Y` (first line) + `# [Exact Heading From Book]` (second line)
- Every module file MUST have a numbered prefix in the filename: `01_Title.md`, `02_Title.md`, etc.
- The number in the filename MUST match the module number in the header
- This numbering tells the reader the correct chronological reading order

### Module Sizing (Cognitive Load Theory)
- **Max 5 concepts** per module
- **Max 1,800 words** of source content per module (not output — output can be longer)
- Split at thematic boundaries, not arbitrary word counts
- If a section has 7 concepts → split into 2 modules

### Output Format (Book-Format Template)
Every module follows this structure (SPARK layers are INVISIBLE — never labeled):
1. Opening vignette (no heading) — 2–4 paragraphs, 300–500 words
2. First `##` section — evocative title (P1 Context Bridge + P2 Concept Surface)
3. `###` subsections — each sub-idea gets its own heading (A layer — ADEPT order)
4. `> [!TIP]` callouts — "Stop and Think" prompts (R layer — 5 per module)
5. `> [!IMPORTANT]` callout — closing insight (K layer)
6. "Speaking of..." section — conversational examples (K near transfer)
7. Bridge to next chapter — no heading, open loop (K far transfer)
8. References section (if research cited)
9. Chapter completion line

### Writing Rules
- Second person ("you") by default
- Max 150–200 words per paragraph
- Conversational register — knowledgeable friend, not professor
- 1–2 Socratic interruptions per major section
- Active voice always (except when subject unknown)
- Bold only for first-time key terms (never for emphasis)
- Every Mermaid diagram has a caption line
- Every table has a caption line

### Examples Policy
- WEIRD filter: must work for readers in India, Nigeria, Brazil, South Korea, UK
- Geographic rotation: no region in 2+ consecutive examples
- Domain rotation: 12 domains (sports, medicine, education, economics, nature, tech, history, food, law, weather, workplace, relationships)
- No banned examples (coffee, Elon Musk, US polls, Stanford Prison, Milgram, Little Albert, Pavlov's bell, etc.)
- Sensory concreteness: specific scenarios, not abstract hypotheticals
- Humanize protagonists: varied ages, professions, socioeconomic statuses

### Research Integration
- NEVER cite from memory — retrieve first, write second
- 1–2 research anchors per module (max 3 for long modules)
- Prefer papers with 50+ citations
- Label preprints explicitly
- Journalistic inline format: "In a 2023 study published in [Journal]..."
- Verify DOIs/URLs before using

### What NEVER Appears in Output
- SPARK layer labels (S—, P1—, P2—, A—, R—, K—)
- Framework terms (Scenario Hook, Context Bridge, Concept Surface, etc.)
- Chapter starting with a definition
- Orphaned statistics without human context
- Uncaptioned diagrams or tables
- Over-bolded text
- Broken Mermaid diagrams (special chars must use quotes)
- Partial/incomplete sections

---

## Per-Chapter Workflow

### Phase 1: Read & Map
1. Read the full chapter markdown
2. Identify all logical sections (even if not marked with ##)
3. List key concepts per section
4. Count concepts and estimate word count per section

### Phase 2: Module Planning
5. Apply cognitive load limits (max 5 concepts, max 1,800 words source)
6. Split oversized sections at thematic boundaries
7. Create module plan with titles, subtopics, concept counts
8. Present plan to user for approval

### Phase 3: Calibration (First Chapter Only)
9. Ask: familiarity level (1–5), goal, personal context

### Phase 4: Generate Modules (Parallel Sub-Agents, High Thinking)
10. For each approved module — **PARALLEL EXECUTION**:
    - Run live research (search for real studies to anchor)
    - Spawn sub-agent with **high-thinking model** (`thinking: "high"`)
    - Provide: source text, module plan, skill rules, research findings
    - Sub-agent generates module following Book-Format Template
    - Save to `Chapter_XX/NN_Section_Title.md` (numbered prefix + content-based title)
    - **Batch 3–5 modules at a time** (parallel sub-agents), wait for completion, verify, then next batch

### Phase 5: Review & Push
11. Verify each module against Output Quality Checklist
12. Report to user with summary
13. Git push to GitHub

---

## Parallel Agent Strategy

### Why Parallel Agents
- Each module is independent — no cross-module dependencies during generation
- Parallel generation cuts chapter turnaround time by 3–5x
- High-thinking mode ensures quality is not sacrificed for speed

### Execution Model

```
Chapter has 8 modules → Split into 3 batches:
  Batch 1: Modules 01, 02, 03 (parallel) → verify all 3
  Batch 2: Modules 04, 05, 06 (parallel) → verify all 3
  Batch 3: Modules 07, 08 (parallel) → verify both
```

### Sub-Agent Configuration
Each sub-agent is spawned with:
- **Model:** default (xiaomi/mimo-v2.5-pro)
- **Thinking:** `high` — for deeper reasoning, better narrative, fewer errors
- **Mode:** `run` — one-shot background work
- **Task:** Complete module generation prompt with:
  - Source text (trimmed to relevant section, max 1,800 words)
  - Module plan details (title, concepts, narrative arc)
  - Full Book-Format Output Template
  - Writing rules + examples policy + banned list
  - Research findings (if any)
  - Output file path (exact)

### Sub-Agent Task Template

```
You are generating a study module for a psychology textbook transformation.

SOURCE TEXT:
{trimmed source text for this module}

MODULE PLAN:
- Chapter: {N} — {Chapter Title}
- Module: {M} — {Module Title}
- Concepts: {list of max 5 concepts}
- Narrative arc: {brief description}
- Key terms to define: {list}
- Research anchors: {findings if any}

OUTPUT FILE: /home/work/.openclaw/workspace/Research/Transformed_Books/An_Intellectual_History_of_Psychology/Chapter_XX/NN_Title.md

RULES:
- Follow the Book-Format Output Template exactly (SPARK framework is INVISIBLE)
- Opening vignette: 300–500 words, no heading, specific scene, end with unanswered question
- 5 Stop and Think prompts (> [!TIP] callouts)
- At least 1 Mermaid diagram with caption
- Second person, conversational, max 150–200 words per paragraph
- WEIRD filter on examples — global rotation
- No banned examples
- Bold only for first-time key terms
- No SPARK labels or framework terms in output
- End with References section and chapter completion line

Save the completed module to the output file path above.
```

### Verification After Batch Completes
After each parallel batch finishes, run verification on ALL modules in the batch:

```bash
for f in Chapter_XX/NN_*.md; do
  echo "=== $(basename $f) ==="
  echo "Words: $(wc -w < $f)"
  echo "Stop&Think: $(grep -c '> \[!TIP\]' $f)"
  echo "Diagrams: $(grep -c 'mermaid' $f)"
  echo "Completion: $(grep -c 'Module.*complete' $f)"
  echo "References: $(grep -c '## References' $f)"
  echo "No SPARK: $(grep -ci 'SPARK' $f)"
  echo "No framework: $(grep -ci 'scenario hook\|context bridge' $f)"
done
```

**Pass criteria:**
- Words: 1,200–3,000
- Stop and Think: exactly 5
- Diagrams: at least 1
- Completion line: at least 1
- References: at least 1
- SPARK labels: 0
- Framework terms: 0

**If any module fails:** Regenerate that specific module (delete old, spawn new sub-agent with fix instructions). Do NOT move to next batch until all modules in current batch pass.

---

## Sub-Agent Task Template

Each sub-agent receives:
- Source text for its module (trimmed to relevant section)
- Module title and subtopics
- Complete Book-Format Output Template
- Writing rules and examples policy
- Research findings (if any)
- Output file path

---

## File Naming Convention

Module filenames use a numbered prefix to indicate reading order. The folder structure carries chapter context.

```
Transformed_Books/An_Intellectual_History_of_Psychology/
├── TRANSFORMATION_LOG.md
├── IMPLEMENTATION_PLAN.md
├── Chapter_01/
│   ├── module_plan.md
│   ├── 01_Culture_of_Thought.md
│   ├── 02_The_Idea_of_History.md
│   └── 03_Psychology_as_a_Discipline.md
├── Chapter_02/
│   ├── module_plan.md
│   ├── 01_The_Nurturing_Conditions.md
│   ├── 02_Pre-Socratic_Psychology.md
│   ├── 03_The_Cosmocentric_Shift.md
│   ├── 04_Pythagoras_and_Parmenides.md
│   ├── 05_Platos_Psychology.md
│   ├── 06_The_Problem_of_Knowledge.md
│   └── 07_The_Problem_of_Conduct.md
...
```

**Naming rule:** `NN_Section_Title.md` where NN is the module number (01, 02, 03...) matching the reading order from the module plan. Title from the book heading, title-cased, spaces to underscores. No `SPARK_`, no `ChXX_`.

---

## Quality Checklist (Per Module)

### Structure
- [ ] Opening vignette has NO heading
- [ ] All sections have evocative headings
- [ ] Bridge to next chapter has NO heading
- [ ] Chapter completion line present
- [ ] References section present (if research cited)

### Formatting
- [ ] Mermaid diagrams use quoted labels for special chars
- [ ] Every ``` block is closed
- [ ] Every > [!TIP] has blank line before content
- [ ] Bold only on first-time key terms
- [ ] Every diagram has caption line
- [ ] Every table has caption line

### Content
- [ ] No SPARK labels visible
- [ ] No framework terms
- [ ] Every key term defined inline on first use
- [ ] No banned examples
- [ ] Examples rotate geographically and across domains
- [ ] Max 150–200 words per paragraph
- [ ] 1–2 Socratic interruptions
- [ ] 5 Reflect prompts

---

## Book-Specific Notes

### Sensitive Topics in This Book
This book covers several topics requiring careful handling:
- **Race psychology & scientific racism** (Ch10, Ch11, Ch12) — present facts without sensationalism, make clear these were abuses
- **Eugenics & forced sterilization** (Ch10, Ch11) — show how science was misused
- **Nazi psychology/psychiatry** (Ch11) — respectful, factual, note the atrocities
- **Gender bias in early psychology** (Ch10, Ch11) — acknowledge the exclusion and its consequences

For any module touching these topics, add a note in the module plan and use extra care in framing.

### Chapter Size Estimates

| Chapter | Source Words | Est. Modules |
|---------|-------------|-------------|
| Ch01: Defining the Subject | 5,681 | 3–4 |
| Ch02: Psychology in the Hellenic Age | 14,534 | 7–8 |
| Ch03: The Hellenistic Age | 12,615 | 6–7 |
| Ch04: Patristic Psychology | 10,342 | 5–6 |
| Ch05: Scholastic Psychology | 14,104 | 7–8 |
| Ch06: Nature and Spirit in the Renaissance | 14,154 | 7–8 |
| Ch07: Empiricism | 23,667 | 12–13 |
| Ch08: Rationalism | 17,439 | 9–10 |
| Ch09: Materialism | 12,956 | 6–7 |
| Ch10: The Nineteenth Century | 19,007 | 10–11 |
| Ch11: From Systems to Specialties | 16,280 | 8–9 |
| Ch12: Contemporary Formulations | 19,565 | 10–11 |
| **Total** | **~166,000** | **~90–100** |

---

## Lessons Learned (from A Conceptual History of Psychology)

### CRITICAL — Prevent These Mistakes

#### 1. Duplicate Files
**Fix:** Before generating a module, ALWAYS check if a file with that number prefix already exists. If regenerating, DELETE the old file first. Run `ls Chapter_XX/0*.md` before and after each module generation.

#### 2. Stop and Think Count Verification
**Fix:** Verify Stop and Think count (`grep -c '> \[!TIP\]'`) IMMEDIATELY after generating each module. Fix before moving to the next module.

#### 3. Mermaid Diagram Consistency
**Fix:** Every module MUST have at least 1 Mermaid diagram. Verify diagram count immediately after generation.

#### 4. Quality Checks Must Be Immediate
**Fix:** After generating each module, run verification IMMEDIATELY before moving to the next.

#### 5. File Naming During Regeneration
**Fix:** When regenerating, use the EXACT same filename. Delete old file before writing new one.

### IMPORTANT — Best Practices

6. **Module plan before generation** — always create `module_plan.md` first
7. **Full source reading before planning** — read entire chapter, don't plan from partial reading
8. **Git commits per chapter** — commit after each chapter, not batched
9. **Subagent depth management** — parallel batches of 3–5, verify between batches
10. **Sensitive topics protocol** — careful framing, factual, acknowledge abuses
11. **Word count management** — source max 1,800 words/module; output 1,500–3,000 words
12. **Short chapters** — single module OK for very short sections (preface, part intros)
13. **Cross-cultural examples** — WEIRD filter, geographic + domain rotation
14. **Opening vignettes** — specific scene, named character, sensory details, unanswered question
15. **Bridges** — no heading, open loop, tease next module

---

## Template: Per-Module Verification Checklist

After generating EACH module, verify:

```bash
FILE="Chapter_XX/NN_Module_Title.md"
echo "=== $(basename $FILE) ==="
echo "Words: $(wc -w < $FILE)"
echo "Stop&Think: $(grep -c '> \[!TIP\]' $FILE)"
echo "Diagrams: $(grep -c 'mermaid' $FILE)"
echo "Tables: $(grep -c '\*Table:' $FILE)"
echo "Figures: $(grep -c '\*Figure:' $FILE)"
echo "Completion line: $(grep -c 'Module.*complete' $FILE)"
echo "References: $(grep -c '## References' $FILE)"
echo "No SPARK: $(grep -ci 'SPARK' $FILE)"
echo "No framework: $(grep -ci 'scenario hook\|context bridge' $FILE)"
```

All checks must pass before proceeding to the next module.

---

## Current Status

- **Book:** An Intellectual History of Psychology
- **Starting:** Chapter 01 — Defining the Subject
- **Date started:** 2026-08-03
- **Total modules planned:** ~90–100
- **Strategy:** Parallel sub-agents (3–5 per batch) with high thinking mode

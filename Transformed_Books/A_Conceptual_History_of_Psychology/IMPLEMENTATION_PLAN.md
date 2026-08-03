# Transformation Implementation Plan

> **Book:** A Conceptual History of Psychology (John Greenwood, 2009)
> **Output:** Transformed_Books/A_Conceptual_History_of_Psychology/
> **Skill:** content-transformer (SPARK v2.0)

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

### Phase 4: Generate Modules (Parallel Sub-Agents)
10. For each approved module:
    - Run live research (search for real studies to anchor)
    - Spawn sub-agent with high-thinking model
    - Provide: source text, module plan, skill rules, research findings
    - Sub-agent generates module following Book-Format Template
    - Save to `Chapter_XX/[Content_Title].md` (content-based filename, no prefix)

### Phase 5: Review & Push
11. Verify each module against Output Quality Checklist
12. Report to user with summary
13. Git push to GitHub

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
Transformed_Books/A_Conceptual_History_of_Psychology/
├── TRANSFORMATION_LOG.md
├── Chapter_01/
│   ├── module_plan.md
│   ├── 01_Why_Study_the_History_of_Psychology.md
│   ├── 02_Science_and_Psychology.md
│   ├── 03_Science_and_Psychology_Part_2.md
│   └── 04_Philosophy_and_Physiology.md
├── Chapter_02/
│   ├── module_plan.md
│   ├── 01_Greek_Science.md
│   ├── 02_The_Naturalists.md
│   ├── 03_The_Formalists_and_the_Physicians.md
│   ├── 04_The_Philosophers.md
│   └── 05_Aristotle.md
├── Chapter_03/
│   ├── module_plan.md
│   ├── 01_The_Roman_Age.md
│   ├── 02_Augustine_and_the_Fall_of_Rome.md
│   ├── 03_The_Medieval_Synthesis.md
│   └── 04_Myths_Madness_and_the_Seeds_of_Science.md
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

## Current Status

- **Book:** A Conceptual History of Psychology
- **Starting:** Chapter 01 — History, Science, and Psychology
- **Date started:** 2026-08-02
- **Date completed:** 2026-08-02
- **Total modules:** 69

---

## Lessons Learned (from A Conceptual History of Psychology)

### CRITICAL — Prevent These Mistakes

#### 1. Duplicate Files
**Problem:** When regenerating modules, old files were not cleaned up, leading to duplicate files in the same chapter directory (e.g., `04_Neobehaviorism.md` and `04_Neobehaviorism_Tolman_Hull_and_the_Mental_Return.md` in Chapter 10; `04_Problems_of_Behaviorism.md` and `04_The_Walls_Close_In.md` in Chapter 11).

**Fix:** Before generating a module, ALWAYS check if a file with that number prefix already exists. If regenerating, DELETE the old file first. Run `ls Chapter_XX/0*.md` before and after each module generation.

#### 2. Stop and Think Count Verification
**Problem:** Modules were frequently generated with only 4 Stop and Think prompts instead of the required 5. This was caught during batch verification at the end, requiring re-editing.

**Fix:** Verify Stop and Think count (`grep -c '> \[!TIP\]'`) IMMEDIATELY after generating each module. Fix before moving to the next module. Do NOT batch-check at the end.

#### 3. Mermaid Diagram Consistency
**Problem:** Some modules ended up with 0 Mermaid diagrams while others had 1-2. The inconsistency was caught during final verification.

**Fix:** Every module MUST have at least 1 Mermaid diagram. If the source content does not naturally suggest a diagram, create one for the narrative arc, key relationships, or timeline. Verify diagram count immediately after generation.

#### 4. Quality Checks Must Be Immediate
**Problem:** Quality checks were done in batch at the end of a chapter, requiring re-editing. This wastes time and creates risk of incomplete fixes.

**Fix:** After generating each module, run this verification IMMEDIATELY before moving to the next:
```bash
tips=$(grep -c '> \[!TIP\]' file.md)
diagrams=$(grep -c 'mermaid' file.md)
tables=$(grep -c '\*Table:' file.md)
figures=$(grep -c '\*Figure:' file.md)
# Verify: tips >= 5, diagrams >= 1, all captioned
```

#### 5. File Naming During Regeneration
**Problem:** When regenerating a module, the new file sometimes got a different name than the old one (e.g., `04_The_Walls_Close_In.md` vs `04_Problems_of_Behaviorism.md`), creating confusion about which is canonical.

**Fix:** When regenerating, use the EXACT same filename as the old file. If the content changes significantly, still keep the same numbered prefix. Delete the old file before writing the new one.

### IMPORTANT — Best Practices

#### 6. Module Plan Before Generation
**Always** create a complete module plan (`module_plan.md`) before generating any modules. The plan should include:
- Module number and title
- Source lines and estimated word count
- Numbered list of concepts (max 5)
- Narrative arc description
- Key terms to define
- Research anchors (1-2 per module)

#### 7. Full Source Reading Before Planning
Read the ENTIRE chapter source text before creating the module plan. Do not plan based on partial reading. Use `grep` to identify section headings, then read each section systematically.

#### 8. Git Commits Per Chapter
Commit and push after completing each chapter, not after multiple chapters. This creates cleaner git history and makes it easier to identify and fix issues.

#### 9. Subagent Depth Management
When at subagent depth 1/1, you cannot spawn sub-subagents. In this case:
- Generate modules sequentially (one at a time)
- Verify each module before moving to the next
- Commit after each chapter is complete
- Do NOT try to parallelize at max depth

#### 10. Sensitive Topics Protocol
For modules covering sensitive topics (eugenics, sterilization, racism, mental illness, ethical violations):
- Present historical facts without sensationalism
- Make clear these were abuses
- Do not minimize the harm
- Show how science was misused
- Use careful, respectful language
- Add a note in the module plan about sensitivity

#### 11. Word Count Management
- Source content: max 1,800 words per module (the INPUT)
- Output content: 1,500-2,500 words per module (the OUTPUT)
- If output is too short (<1,200 words), add more examples and depth
- If output is too long (>3,000 words), consider splitting

#### 12. Epilogue / Short Chapters
For very short chapters (like an epilogue), a single module is acceptable. Do not artificially inflate content to meet the 5-module target.

#### 13. Cross-Cultural Examples
- Always apply WEIRD filter: examples must work for readers in India, Nigeria, Brazil, South Korea, UK
- Rotate geographically: no region in 2+ consecutive examples
- Rotate domains: sports, medicine, education, economics, nature, tech, history, food, law, weather, workplace, relationships
- Include at least 2-3 non-Western examples per module

#### 14. Opening Vignette Quality
- 300-500 words, NO heading
- Drop reader into a specific scene (time, place, person)
- End with an unanswered question
- Do NOT start with a definition or abstract statement
- Use sensory details and specific characters

#### 15. Bridge to Next Module/Chapter
- NO heading
- Open loop: tease what comes next
- For the last module of a chapter: include chapter completion line
- For the last chapter of the book: include a concluding reflection

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

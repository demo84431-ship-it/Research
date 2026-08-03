# Lessons Learned: Book Transformation Projects

> **Source project:** A Conceptual History of Psychology (Greenwood, 2009)
> **Completed:** 2026-08-02 | **69 modules across 15 chapters**
> **Second book:** An Intellectual History of Psychology (Robinson, 1995)
> **Completed:** 2026-08-03 | **100 modules across 12 chapters**
> **Purpose:** Prevent repeating mistakes in future book transformations

---

## Critical Mistakes to Prevent

### 1. Duplicate Files During Regeneration
**What happened:** When regenerating modules, old files were not cleaned up, leading to duplicate files with different names in the same chapter directory.

**Prevention:**
- Before generating any module, run `ls Chapter_XX/0*.md` to see existing files
- If regenerating, DELETE the old file FIRST
- Use the EXACT same filename when regenerating
- After generation, verify only one file per module number exists

### 2. Stop and Think Count Errors
**What happened:** Modules were frequently generated with only 4 Stop and Think prompts instead of the required 5. This was only caught during batch verification at the end.

**Prevention:**
- Verify count IMMEDIATELY after each module generation
- Command: `grep -c '> \[!TIP\]' filename.md`
- If count < 5, add the missing prompt BEFORE moving to next module
- Do NOT batch-check at the end of a chapter

### 3. Missing Mermaid Diagrams
**What happened:** Some modules had 0 Mermaid diagrams while others had 1-2. Inconsistency caught during final verification.

**Prevention:**
- Every module MUST have at least 1 Mermaid diagram
- If source doesn't suggest one, create a narrative arc, timeline, or relationship diagram
- Verify count immediately: `grep -c 'mermaid' filename.md`

### 4. Late Quality Verification
**What happened:** Quality checks were done in batch at the end of chapters, requiring re-editing of multiple files.

**Prevention:**
- Run full verification AFTER EACH MODULE, not at chapter end
- Use the per-module verification checklist (see below)
- Fix issues immediately before proceeding

### 5. Inconsistent Filenames During Regeneration
**What happened:** New files got different names than old files (e.g., `04_The_Walls_Close_In.md` vs `04_Problems_of_Behaviorism.md`), creating confusion.

**Prevention:**
- When regenerating, use the EXACT same filename
- If content changes significantly, keep the same numbered prefix
- Document the canonical name in the module plan

---

## Best Practices

### Module Plan First
Always create `module_plan.md` BEFORE generating any modules. Include:
- Module number, title, source lines, word count
- Numbered concept list (max 5 per module)
- Narrative arc description
- Key terms to define
- Research anchors (1-2 per module)

### Full Source Reading
Read the ENTIRE chapter before planning. Use `grep` to identify section structure, then read each section systematically.

### Git Hygiene
- Commit and push after EACH chapter completion
- Use descriptive commit messages listing all modules
- Do NOT batch multiple chapters in one commit

### Subagent Depth Management
When at max depth (1/1):
- Generate modules sequentially, not in parallel
- Verify each module before proceeding
- Commit after each chapter
- Do NOT attempt to spawn sub-subagents

### Sensitive Topics Protocol
For modules covering eugenics, sterilization, racism, mental illness, ethical violations:
- Present facts without sensationalism
- Make clear these were abuses
- Do not minimize harm
- Show how science was misused
- Use careful, respectful language
- Note sensitivity in module plan

### Word Count Targets
- Source input: max 1,800 words per module
- Output: 1,500–2,500 words per module
- Too short (<1,200): add examples, depth, Stop and Think prompts
- Too long (>3,000): consider splitting into two modules

### Short Chapters / Epilogues
For very short chapters (like an epilogue), a single module is acceptable. Do not artificially inflate content.

### Cross-Cultural Examples
- WEIRD filter: examples must work globally (India, Nigeria, Brazil, South Korea, UK)
- Geographic rotation: no region in 2+ consecutive examples
- Domain rotation: sports, medicine, education, economics, nature, tech, history, food, law, weather, workplace, relationships
- Include 2-3 non-Western examples per module

### Opening Vignettes
- 300–500 words, NO heading
- Drop reader into a specific scene (time, place, person)
- End with an unanswered question
- Never start with a definition or abstract statement
- Use sensory details and specific characters

### Bridges
- NO heading
- Open loop: tease what comes next
- Last module of chapter: include chapter completion line
- Last chapter of book: include concluding reflection

---

## Per-Module Verification Checklist

Run this AFTER EACH MODULE before proceeding:

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

**Pass criteria:**
- Words: 1,200–3,000
- Stop&Think: exactly 5
- Diagrams: at least 1
- Completion line: at least 1
- References: at least 1
- SPARK labels: 0
- Framework terms: 0

---

## Quality Checklist (Per Module)

### Structure
- [ ] Opening vignette has NO heading
- [ ] All sections have evocative headings
- [ ] Bridge to next chapter has NO heading
- [ ] Chapter completion line present
- [ ] References section present

### Formatting
- [ ] Mermaid diagrams use quoted labels for special chars
- [ ] Every code block is closed
- [ ] Every > [!TIP] has blank line before content
- [ ] Bold only on first-time key terms
- [ ] Every diagram has caption line (*Figure: ...*)
- [ ] Every table has caption line (*Table: ...*)

### Content
- [ ] No SPARK labels visible
- [ ] No framework terms (Scenario Hook, Context Bridge, etc.)
- [ ] Every key term defined inline on first use
- [ ] No banned examples
- [ ] Examples rotate geographically and across domains
- [ ] Max 150–200 words per paragraph
- [ ] 1–2 Socratic interruptions per major section
- [ ] 5 Stop and Think prompts

---

*Last updated: 2026-08-03*

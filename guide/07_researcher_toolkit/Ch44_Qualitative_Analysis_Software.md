# Chapter 32: Qualitative Tools — Software for Working with Words

## Why Use Software for Qualitative Research?

Qualitative research generates mountains of text — interview transcripts, field notes, open-ended survey responses, documents, social media posts. In the early days, researchers handled this with scissors, highlighters, and stacks of paper. Today, qualitative data analysis software (QDAS) organizes, codes, retrieves, and helps you see patterns in your data that manual methods might miss.

A critical caveat before we begin: **software does not do the analysis for you.** NVivo, Atlas.ti, MAXQDA, and their alternatives are organizational tools. They help you manage data and code efficiently, but the thinking — the interpretation, the thematic insight, the theoretical integration — is yours. No algorithm replaces a skilled qualitative researcher.

You already know NVivo, so we will start there and then explore alternatives and free options.

---

## NVivo: Setup and Workflow

### Setting Up a Project

1. **Open NVivo** and create a new project.
   - File → New Project.
   - Name it (e.g., "Cognitive Load Study — Interview Analysis").
   - Choose a location to save the project file (.nvp or .nvpx).

2. **Set up your folder structure** in the Navigation Pane:
   - **Internal Sources** — for data you import (interviews, documents, PDFs).
   - **Nodes** — your coding structure (themes, categories, concepts).
   - **Memos** — your analytical notes and reflections.
   - **Cases** — participant profiles with demographic attributes.

3. **Create case classifications** (optional but powerful):
   - Right-click "Case Classifications" → New Classification → name it "Participants."
   - Add attributes: age (integer), gender (text), education level (text), group (text).
   - These attributes let you later compare codes across demographic groups.

### Importing Data

NVivo handles multiple data types:
- **Text documents:** Word files, PDFs, plain text.
- **Audio/video:** Import recordings directly; NVivo can transcribe or you can import transcripts.
- **Images:** Photos, screenshots, diagrams.
- **Datasets:** Spreadsheets with open-ended responses.
- **Social media:** Import from Twitter, Facebook (with NCapture browser extension).

**To import:**
1. Data → Files → select your files.
2. NVivo adds them to the Internal Sources folder.
3. Organize them into folders (e.g., "Interviews," "Field Notes," "Documents").

### The Coding Process

Coding is the heart of qualitative analysis. In NVivo, you create **nodes** (also called codes) and assign text segments to them.

**Creating nodes:**
1. Right-click "Nodes" → New Node.
2. Name it (e.g., "Working Memory Strategies," "Cognitive Overload," "Metacognitive Awareness").
3. Add a description explaining what this code means and when to apply it.

**Coding text:**
1. Open a source document by double-clicking it.
2. Highlight a passage of text.
3. Right-click → Code Selection → select an existing node or create a new one.
4. The passage is now linked to that node.

**Two approaches to coding:**

- **Deductive (top-down):** Start with a predefined coding framework based on your research questions or theory. Create nodes for each expected theme, then apply them to the data.
- **Inductive (bottom-up):** Read through the data without predefined codes. Create nodes as themes emerge. This is the grounded theory approach.
- **Hybrid:** Start with some predefined codes from your research questions, but remain open to emergent themes. Most qualitative studies use this approach.

> **Pro Tip:** Code in passes. First pass: broad descriptive codes (what is being said?). Second pass: more focused codes (what does it mean?). Third pass: thematic codes (what patterns connect these?). This layered approach produces richer analysis than trying to assign a final code on first reading.

### Running Queries

NVivo's query functions help you explore your coded data systematically.

**Word Frequency Query:**
- Explore → Word Frequency.
- This shows the most common words in your corpus, displayed as a word cloud or list.
- Useful for initial exploration — what topics dominate the data?

**Text Search Query:**
- Explore → Text Search.
- Search for specific terms across all sources.
- Example: Search for "stress" and auto-code all passages containing that word to a node.
- Use with caution — automated coding captures mentions, not necessarily meaning.

**Coding Query:**
- Explore → Coding.
- Find all passages coded to a specific node, or intersections of nodes.
- Example: "Show me all passages coded to both 'Working Memory Strategies' AND 'Metacognitive Awareness'." This reveals connections between themes.

**Matrix Coding Query:**
- Explore → Matrix Coding.
- Cross-tabulate nodes against case attributes.
- Example: Rows = coding nodes, Columns = gender. The matrix shows how often each theme appears for each gender. This is powerful for comparative analysis.

**Coding Comparison:**
- If you have multiple coders, run a coding comparison query to assess inter-rater reliability.
- Explore → Coding Comparison.
- Select two coders and the nodes to compare. NVivo calculates the Kappa coefficient.

### Using Memos

Memos are your analytical voice. Use them to:
- Record your thinking as you code.
- Note emerging interpretations.
- Write reflections on surprising findings.
- Track methodological decisions.

Create memos frequently. They are invaluable when you write up your results — your analytical journey is already documented.

---

## Atlas.ti: The Alternative

Atlas.ti (atlasti.com) is NVivo's main competitor. It offers a similar feature set with some distinct advantages.

### Key Differences from NVivo

| Feature | NVivo | Atlas.ti |
|---|---|---|
| **Interface** | Structured, hierarchical | More visual, network-based |
| **Pricing** | Subscription or institutional | Subscription or one-time purchase |
| **AI Features** | Basic auto-coding | AI-powered coding assistance |
| **Visualization** | Queries and charts | Network views (excellent) |
| **Collaboration** | NVivo Collaboration Cloud | Atlas.ti Web for team projects |
| **Data Types** | Broad (text, audio, video, images, datasets) | Broad (similar range) |

### Atlas.ti's Strengths

- **Network views:** Atlas.ti excels at visualizing relationships between codes. You can drag and drop codes into a network, draw connections, and see your conceptual map take shape. This is particularly useful for grounded theory analysis.
- **AI-assisted coding:** Atlas.ti offers AI features that suggest codes for text segments. These are starting points, not replacements for your judgment.
- **Quotation management:** Atlas.ti's quotation system is intuitive — highlight text, drag it to a code, and it becomes a quotation linked to that code.

### When to Choose Atlas.ti

- You prefer a visual, network-based approach to analysis.
- You want AI-assisted coding suggestions.
- Your team uses Atlas.ti (collaboration is smoother when everyone uses the same tool).
- Your institution has a license.

---

## MAXQDA: Mixed Methods Champion

MAXQDA (maxqda.com) is particularly strong for mixed methods research — studies that combine qualitative and quantitative data.

### MAXQDA's Unique Strengths

- **Mixed methods integration:** MAXQDA has dedicated tools for connecting qualitative codes with quantitative variables. You can create typologies, run statistical tests on coded segments, and visualize the integration.
- **Visual tools:** Built-in tools for creating concept maps, code maps, and document portraits.
- **Mixed Methods Matrix:** A unique feature that lets you cross-tabulate qualitative codes with quantitative variables in a matrix format.
- **Statistical analysis:** Basic descriptive statistics are built in, so you can do some quantitative work without leaving the software.
- **Team collaboration:** MAXQDA TeamCloud facilitates multi-researcher projects.

### When to Choose MAXQDA

- Your study is explicitly mixed methods.
- You want to integrate quantitative survey data with qualitative interview data.
- You value visual tools for exploring and presenting data.
- Your institution has a license.

---

## Free Alternatives

If you do not have access to NVivo, Atlas.ti, or MAXQDA, several free tools can handle qualitative analysis.

### Taguette

Taguette (taguette.org) is a free, open-source, web-based qualitative coding tool. It is simple but effective for basic coding tasks.

**Features:**
- Import text documents (Word, PDF, plain text).
- Create codes and apply them to highlighted text segments.
- Export coded data for further analysis.
- Works in any browser — no installation needed.
- Can be installed locally or used on a server for team collaboration.

**Limitations:** No advanced queries, no visualization, no audio/video support. It does one thing — coding — and does it well.

**Getting started:**
1. Go to taguette.org or install locally (Python-based: `pip install taguette`).
2. Create a new project.
3. Import your documents.
4. Create your codebook.
5. Highlight text → apply codes.
6. Export your coded data.

### RQDA

RQDA (R Qualitative Data Analysis) is an R package for qualitative analysis. It is free and open-source, but the interface is basic.

```r
install.packages("RQDA")
library(RQDA)
RQDA()  # Opens the GUI
```

RQDA supports:
- Document management.
- Code creation and application.
- Code retrieval and simple queries.
- Memo writing.

**Limitations:** The interface is dated, development has slowed, and it lacks the sophisticated features of commercial software. But if you want free qualitative analysis integrated with R, it is an option.

### Coding in a Word Processor

You can do basic qualitative coding without any specialized software:

1. Print your transcripts (or use split-screen on your monitor).
2. Use highlighters (physical or digital) with different colors for different codes.
3. Create a codebook in a spreadsheet: code name, definition, example quotes.
4. Use Word's comment feature to attach codes to passages.
5. Use Find (Ctrl+F) to retrieve all instances of a code.

This approach is labor-intensive but works for small datasets (5-10 interviews). It also gives you an intimate familiarity with the data that software sometimes abstracts away.

> **Free Alternative:** For students on a budget, **Taguette** is the best free option for straightforward qualitative coding. It handles the core coding workflow without the complexity or cost of commercial software.

---

## Manual Coding vs. Software-Assisted Coding

| Aspect | Manual Coding | Software-Assisted |
|---|---|---|
| **Cost** | Free (highlighters and paper) | Free to expensive |
| **Learning curve** | None | Moderate to steep |
| **Data capacity** | Small datasets (5-15 sources) | Large datasets (100+ sources) |
| **Code retrieval** | Slow, labor-intensive | Instant, flexible |
| **Query capability** | Very limited | Powerful (matrix, cross-tab) |
| **Visualization** | Manual drawing | Built-in tools |
| **Intimacy with data** | Very high | Can be lower (depends on workflow) |
| **Team collaboration** | Difficult | Designed for it |
| **Audit trail** | Requires discipline | Automatic |

**The honest truth:** For a master's thesis with 8-12 interviews, you can do excellent qualitative analysis manually. Software becomes essential when your dataset grows beyond what you can physically manage, or when you need sophisticated queries and cross-referencing.

---

## Step-by-Step: Thematic Analysis in NVivo

Let us walk through a complete thematic analysis using Braun and Clarke's (2006) six-phase framework in NVivo.

### Phase 1: Familiarization

1. Import all interview transcripts into NVivo.
2. Read each transcript at least twice without coding.
3. Write a memo after each reading: initial impressions, surprising quotes, potential patterns.
4. Use NVivo's word frequency query to get a sense of common terms.

### Phase 2: Generating Initial Codes

1. Open the first transcript.
2. Read through and highlight segments that seem relevant to your research questions.
3. Right-click → Code Selection → New Node. Name the node descriptively.
4. Continue through the entire transcript, creating nodes as you go.
5. Move to the next transcript. Use existing nodes when the text fits, create new ones when it does not.
6. Aim for breadth — code anything that might be relevant.

**Example codes from a study on cognitive load:**
- "task-switching difficulty"
- "feeling overwhelmed"
- "using checklists as external memory"
- "prioritizing information"
- "awareness of limits"

### Phase 3: Searching for Themes

1. Review your node list. Open the Node View to see all text coded at each node.
2. Group related nodes into broader categories by creating "parent nodes" (themes) and moving related codes under them.
3. Use NVivo's hierarchy chart to visualize the structure.

**Example theme structure:**
```
Theme: Cognitive Overload Indicators
  ├── Task-switching difficulty
  ├── Feeling overwhelmed
  └── Reduced performance under pressure

Theme: Compensatory Strategies
  ├── Using checklists as external memory
  ├── Prioritizing information
  └── Breaking tasks into smaller steps

Theme: Metacognitive Awareness
  ├── Awareness of limits
  ├── Self-monitoring
  └── Adjusting strategies based on feedback
```

### Phase 4: Reviewing Themes

1. Read through all the data coded at each theme. Does the theme hold together? Is there enough data to support it?
2. Use a coding query to find passages coded to multiple themes. These intersections often reveal the most interesting findings.
3. Split themes that are too broad. Merge themes that are too narrow. Delete themes with insufficient data.
4. Write a memo for each theme explaining its story.

### Phase 5: Defining and Naming Themes

1. For each theme, write a clear definition: what it means, what it includes, and what it excludes.
2. Choose a concise, evocative name for each theme.
3. Identify the "essence" of each theme — the core idea it captures.
4. Use NVivo's matrix coding query to examine how themes vary across participant groups.

### Phase 6: Producing the Report

1. Export your coded data: right-click a node → Extract → create a summary document with all quotes for that theme.
2. Select vivid, illustrative quotes for each theme.
3. Write the findings section, weaving together your interpretation with participant quotes.
4. Use NVivo's memos as a resource — they contain your analytical thinking throughout the process.

> **Pro Tip:** Keep a "parking lot" node for interesting passages that do not fit any current theme. Revisit it after your initial coding. Sometimes these outliers become the most interesting findings, or they reveal themes you initially missed.

---

## Practical Exercise

If you have NVivo or access to a free trial:

1. Import 3-5 interview transcripts (or use practice data from NVivo's sample projects).
2. Create at least 10 initial codes.
3. Group them into 3-4 themes.
4. Run a word frequency query on your entire dataset.
5. Run a coding query to find passages where two themes overlap.
6. Write a memo about what you learned from the overlap.

If you do not have NVivo:

1. Download Taguette.
2. Import 2-3 interview transcripts.
3. Create codes and apply them to text passages.
4. Export your coded data.
5. Organize the quotes by code in a Word document.

---

## Common Mistakes to Avoid

1. **Letting the software drive the analysis.** Software makes coding faster, but speed is not the same as depth. Slow down and think about what each passage means, not just which code it fits.
2. **Creating too many codes.** If you have 200 codes for 10 interviews, you have over-coded. Aim for 30-60 initial codes that you later consolidate into themes.
3. **Coding at the surface level.** "Participant mentions stress" is descriptive. "Participant uses avoidance as a coping mechanism when cognitive load exceeds capacity" is interpretive. Qualitative analysis requires interpretation.
4. **Not writing memos.** Your memos are the trail of your thinking. Without them, you will forget why you made certain coding decisions, and your write-up will lack analytical depth.
5. **Treating themes as just categories.** A theme is not a label — it is a story. Each theme should convey something meaningful about the data, not just group similar passages together.

---

## Summary

Qualitative software is a powerful assistant, but the analysis is yours. NVivo is the industry standard with the most comprehensive feature set. Atlas.ti offers excellent visualization. MAXQDA shines for mixed methods. Taguette and RQDA provide capable free alternatives. Whichever tool you use, the fundamentals remain the same: familiarize yourself with the data, code systematically, look for patterns, and write reflectively. The tool helps you organize; the thinking is what produces insight.

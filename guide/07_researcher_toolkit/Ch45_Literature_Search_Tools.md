# Chapter 33: Literature Search — Finding What You Need

## The Art and Science of Searching

A literature review is only as good as the literature you find. Miss a key paper, and your entire theoretical framework could be incomplete. Find the wrong papers, and you waste hours reading irrelevant material. This chapter teaches you how to search efficiently, comprehensively, and strategically across multiple databases and tools.

The goal is not to read everything — it is to find the right things. A targeted search that retrieves 30 highly relevant papers is worth more than a vague search that retrieves 3,000 undifferentiated results.

---

## PubMed: The Psychology Researcher's Essential Database

PubMed (pubmed.ncbi.nlm.nih.gov) is the free database maintained by the National Library of Medicine. It indexes over 35 million citations from biomedical and life sciences journals, including most major psychology journals.

### Basic Search

Type your query into the search bar. PubMed searches across title, abstract, and MeSH terms. For example:

```
working memory cognitive load
```

This returns papers that mention these terms anywhere in their records. It works, but it is imprecise.

### Using MeSH Terms (Medical Subject Headings)

MeSH terms are controlled vocabulary tags assigned to every paper in PubMed. They are the secret weapon for precise searching.

**Why MeSH terms matter:**
- "Working memory" as a keyword might appear in contexts you do not want (e.g., computer science papers on RAM).
- The MeSH term "Short-Term Memory" captures the specific psychological concept, regardless of what terminology the authors used.

**How to use MeSH:**
1. Go to [meshb.nlm.nih.gov](https://meshb.nlm.nih.gov/) (MeSH Browser).
2. Search for your concept (e.g., "working memory").
3. The browser shows the MeSH term and its tree structure (hierarchy).
4. Note the MeSH descriptor and any subheadings.

**Example MeSH search in PubMed:**
```
"Short-Term Memory"[MeSH] AND "Cognitive Load"[MeSH]
```

This retrieves papers indexed under both MeSH terms, regardless of the exact words the authors used.

### Combining MeSH with Keywords

The most powerful searches combine MeSH terms with free-text keywords:

```
("Short-Term Memory"[MeSH] OR "working memory"[tiab]) 
AND ("Cognitive Load"[MeSH] OR "cognitive load"[tiab] OR "mental workload"[tiab])
```

- `[MeSH]` searches the controlled vocabulary.
- `[tiab]` searches title and abstract.
- `OR` broadens the search (synonyms).
- `AND` narrows it (both concepts must be present).

### Filters

PubMed offers filters on the left sidebar after a search:
- **Article type:** Clinical Trial, Review, Meta-Analysis, Randomized Controlled Trial.
- **Publication date:** Limit to last 5 years, 10 years, or custom range.
- **Species:** Human, Animal.
- **Language:** English, and others.

> **Pro Tip:** Use the "Review" filter when you are starting a literature review. Reviews synthesize existing research and point you to the most important primary studies. Read the review's reference list to find the foundational papers.

### Saving Searches and Setting Alerts

1. Run your search.
2. Click "Create alert" under the search bar.
3. Enter your email address.
4. PubMed will email you whenever new papers matching your search are published.

This is invaluable for staying current during your research. Set up alerts for your key topics, and new papers arrive in your inbox automatically.

---

## Google Scholar: Broad and Accessible

Google Scholar (scholar.google.com) indexes across publishers, repositories, preprint servers, and the open web. It casts the widest net of any search tool.

### Effective Google Scholar Strategies

**Use exact phrases:**
```
"cognitive load theory" "working memory"
```
Quotes force an exact match. Without them, Google Scholar treats each word independently.

**Use the advanced search:**
1. Click the hamburger menu (☰) → Advanced Search.
2. Set specific fields: "Where my words appear" → "in the title of the article."
3. Set date ranges, author names, and publication sources.

**Search by author:**
```
author:"Baddeley" working memory
```
This finds papers by Baddeley about working memory.

**Find citing papers:**
1. Search for a key paper.
2. Click "Cited by [number]" under the result.
3. This shows every paper that has cited it — a powerful way to trace how an idea has developed over time.

**Find related papers:**
Click "Related articles" under any result to find papers with similar content.

**Find PDFs:**
Click "All versions" under a result. Sometimes a free PDF is available from an institutional repository or preprint server even when the journal version is paywalled.

### Google Scholar Limitations

- **No controlled vocabulary:** Unlike PubMed's MeSH, Google Scholar has no standardized terms. You rely on authors' word choices.
- **No advanced Boolean:** Google Scholar's Boolean support is limited compared to dedicated databases.
- **Quality varies:** Google Scholar indexes everything, including predatory journal articles, theses, and low-quality sources.
- **Opaque algorithm:** You do not know why certain results appear first. PubMed's relevance ranking is more transparent.

> **Pro Tip:** Use Google Scholar to supplement PubMed, not replace it. Start with PubMed for systematic, controlled searches. Use Google Scholar for broader discovery, citation tracking, and finding free full-text versions.

---

## Semantic Scholar: AI-Powered Discovery

Semantic Scholar (semanticscholar.org) is a free, AI-powered research tool developed by the Allen Institute for AI. It uses natural language processing to understand papers beyond keyword matching.

### Key Features

- **TLDR (Too Long; Didn't Read):** AI-generated one-sentence summaries for many papers. This lets you quickly triage search results.
- **Semantic search:** Understands the meaning of your query, not just the keywords. Searching "how does anxiety affect memory performance" retrieves conceptually related papers even if they use different terminology.
- **Influential citations:** Identifies which citations are important (heavily cited, from influential papers) versus routine background citations.
- **Research feeds:** Create a personalized feed based on your interests. Semantic Scholar recommends papers based on your reading history.
- **Citation graph:** Visualizes how papers connect through citations.

### Using Semantic Scholar Effectively

1. Enter your research question in natural language.
2. Browse the TLDR summaries to quickly identify relevant papers.
3. Use the filters (year, venue, study type) to narrow results.
4. Click on a paper to see its "Influential Citations" — these are often the most important papers in that area.
5. Add papers to your library and set up alerts for new recommendations.

> **Free Alternative:** Semantic Scholar is completely free and is one of the best tools for discovering papers you would not find through keyword searching alone. Its AI capabilities make it particularly useful for interdisciplinary topics like AI × Psychology.

---

## Elicit: Your AI Research Assistant

Elicit (elicit.com) is an AI-powered research tool designed specifically for literature reviews. It goes beyond search — it helps you extract and synthesize information from papers.

### What Elicit Does

1. **Search with a research question:** Enter a question like "Does cognitive load affect decision-making quality?" Elicit finds relevant papers and extracts key findings.
2. **Extract structured information:** For each paper, Elicit pulls out the sample size, methodology, key findings, and limitations — in a table format.
3. **Synthesize across papers:** Elicit summarizes what the overall evidence says about your question.
4. **Identify gaps:** By mapping what has been studied, Elicit helps you see what has not been studied.

### Using Elicit for a Literature Review

1. Go to elicit.com and create a free account.
2. Enter your research question.
3. Elicit returns a list of relevant papers with extracted information.
4. Review the extracted data: sample sizes, methods, findings.
5. Add papers to your library.
6. Use the synthesis feature to see a summary of the evidence.

### Elicit Limitations

- **Extraction accuracy:** AI extraction is not perfect. Always verify the extracted information against the original paper.
- **Database coverage:** Elicit primarily indexes papers from Semantic Scholar's database, which is large but not exhaustive.
- **Cost:** The free tier has limited queries per month. The paid tier ($10-15/month) offers more.

> **Pro Tip:** Use Elicit as a starting point, not an endpoint. It excels at quickly mapping a research area and extracting key data. But for a thorough literature review, you still need to read the papers yourself.

---

## Connected Papers: Visual Research Mapping

Connected Papers (connectedpapers.com) creates a visual graph of related papers. It is not a search engine — it is a discovery tool that shows how papers relate to each other.

### How Connected Papers Works

1. Enter a paper (by title, DOI, or URL).
2. Connected Papers generates a graph where:
   - Each node is a paper.
   - Lines connect papers with high citation overlap.
   - Node size reflects citation count.
   - Node color indicates publication year (older = darker).
3. Papers closer together in the graph are more similar in content.

### Using Connected Papers

- **Find related work:** Start with one key paper and discover the cluster of related research around it.
- **Identify seminal papers:** Large, dark nodes are highly cited older papers — likely foundational works.
- **Find recent developments:** Light-colored nodes are recent papers in the area.
- **Spot gaps:** If a cluster has few papers on a specific subtopic, that might be a research gap.

> **Free Alternative:** Connected Papers is free for up to 5 graphs per month. It is one of the most useful tools for visually understanding a research area and finding papers you might otherwise miss.

---

## Research Rabbit: Citation-Based Discovery

Research Rabbit (researchrabbit.ai) is another free tool that helps you discover papers through citation networks. Think of it as "Spotify for research papers" — you add papers you like, and it recommends similar ones.

### How to Use Research Rabbit

1. Create a free account.
2. Add papers to a collection (by title, DOI, or importing from Zotero).
3. Research Rabbit shows:
   - **Related work:** Papers similar to your collection.
   - **Earlier work:** Papers cited by your collection (foundational research).
   - **Later work:** Papers that cite your collection (follow-up research).
4. It learns from your additions and improves recommendations over time.

### Research Rabbit's Strengths

- **Visual timeline:** See how research on a topic has evolved over time.
- **Collaboration:** Share collections with collaborators.
- **Zotero integration:** Import from and export to Zotero.
- **Free:** No paid tier. Completely free.

---

## Boolean Search Operators: The Foundation

Boolean operators are the building blocks of effective database searching. Master these, and you can search any database precisely.

### The Three Core Operators

**AND** — narrows the search (both terms must appear):
```
anxiety AND working memory
```
Returns papers that mention both anxiety and working memory.

**OR** — broadens the search (either term can appear):
```
"working memory" OR "short-term memory"
```
Returns papers that mention either term. Useful for synonyms.

**NOT** — excludes a term:
```
memory NOT "computer memory"
```
Returns papers about memory but excludes those about computer memory. Use cautiously — you might exclude relevant papers.

### Combining Operators with Parentheses

```
(anxiety OR "anxiety disorder" OR "generalized anxiety") 
AND ("working memory" OR "short-term memory") 
AND (experiment OR RCT OR "randomized controlled trial")
```

This searches for experimental studies on anxiety and working memory. Parentheses group related terms and control the order of operations.

### Field-Specific Searches

Different databases allow you to search specific fields:

| Syntax | Database | Searches |
|---|---|---|
| `[tiab]` | PubMed | Title and abstract |
| `[MeSH]` | PubMed | MeSH terms |
| `[ti]` | PubMed | Title only |
| `intitle:` | Google Scholar | Title only |
| `author:` | Google Scholar | Author name |
| `source:` | Google Scholar | Publication source |

### A Complete Search Strategy Example

**Research question:** What is the effect of mindfulness meditation on working memory capacity?

**Step 1:** Identify concepts:
- Concept 1: Mindfulness meditation
- Concept 2: Working memory capacity

**Step 2:** List synonyms and related terms:
- Concept 1: mindfulness, meditation, mindfulness-based stress reduction, MBSR, contemplative practice
- Concept 2: working memory, short-term memory, memory span, digit span, n-back

**Step 3:** Build the search string:

```
("mindfulness"[tiab] OR "meditation"[tiab] OR "MBSR"[tiab] 
OR "mindfulness-based"[tiab] OR "contemplative practice"[tiab])
AND
("working memory"[tiab] OR "short-term memory"[MeSH] 
OR "memory span"[tiab] OR "digit span"[tiab] OR "n-back"[tiab])
```

**Step 4:** Apply filters:
- Publication date: Last 10 years
- Language: English
- Article type: Exclude case reports and editorials

**Step 5:** Review results, identify additional search terms from relevant papers, and iterate.

> **Pro Tip:** Document your search strategy as you go. Record which databases you searched, which terms you used, how many results each search returned, and which papers you included or excluded. This is essential for systematic reviews and good practice for any literature review.

---

## Managing Search Results

Finding papers is only half the battle. You need a system for organizing, reading, and tracking what you have found.

### The Search-to-Library Pipeline

1. **Search** across multiple databases (PubMed, Google Scholar, Semantic Scholar).
2. **Export** results to your reference manager (Zotero). Most databases have direct export options.
3. **De-duplicate:** Zotero can identify and merge duplicates (Tools → Find Duplicate Items).
4. **Screen titles and abstracts:** Quickly scan and remove clearly irrelevant papers.
5. **Organize** into collections by topic or by role in your literature review (theoretical framework, methodology, empirical findings, etc.).
6. **Read and annotate** using your reference manager's PDF reader.
7. **Track** what you have read, what you need to read, and what you have cited.

### Creating a Literature Matrix

A literature matrix is a spreadsheet that summarizes key information from each paper you read:

| Author/Year | Purpose | Method | Sample | Key Findings | Limitations | Relevance |
|---|---|---|---|---|---|---|
| Smith (2020) | Test MBSR effect on WM | RCT | N=80 | Significant improvement | Short follow-up | Directly relevant |
| Jones (2019) | Review of WM training | Meta-analysis | 50 studies | Small effects | Heterogeneous methods | Background |

This matrix is invaluable when you write your literature review. Instead of re-reading papers, you consult your matrix.

---

## Practical Exercise

Try this complete search exercise:

1. **Define your research question:** "How does sleep deprivation affect cognitive performance in young adults?"
2. **Identify key concepts and synonyms.**
3. **Search PubMed** using MeSH terms and Boolean operators.
4. **Search Google Scholar** using keyword phrases.
5. **Enter your top result into Connected Papers** and discover related work.
6. **Use Elicit** to extract key findings from the top 5 results.
7. **Export all results to Zotero** and organize them into a collection.
8. **Create a literature matrix** with at least 5 papers.

This exercise takes about an hour and gives you a solid foundation for a literature review on the topic.

---

## Common Mistakes to Avoid

1. **Searching only Google Scholar.** Google Scholar is broad but imprecise. Use PubMed (or PsycINFO) for controlled, systematic searching and Google Scholar for supplementary discovery.
2. **Not using MeSH terms.** You miss relevant papers that use different terminology for the same concept.
3. **Too narrow a search.** If you get fewer than 20 results, your search is probably too specific. Add synonyms with OR.
4. **Too broad a search.** If you get 5,000 results, add more specific terms with AND or use field-specific searches.
5. **Not tracking your search process.** You will forget which databases you searched and which terms you used. Document everything.
6. **Ignoring citation tracking.** When you find a key paper, look at what it cites and who has cited it. This snowball technique often surfaces important papers that keyword searches miss.
7. **Stopping too early.** A literature search is iterative. Each paper you read suggests new search terms and reveals new directions. Plan to search multiple times throughout your research.

---

## Summary

Effective literature searching is a skill that improves with practice. Start with PubMed for systematic, MeSH-based searching. Use Google Scholar for broader discovery and citation tracking. Explore AI-powered tools like Semantic Scholar, Elicit, Connected Papers, and Research Rabbit for discovery beyond keywords. Master Boolean operators to build precise searches. And always, always document your search process. The literature you find shapes the research you do — invest the time to find it well.

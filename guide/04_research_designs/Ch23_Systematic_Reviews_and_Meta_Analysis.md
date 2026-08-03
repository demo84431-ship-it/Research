# Chapter 16: The Systematic Review and Meta-Analysis

## What You Will Learn

By the end of this chapter, you will be able to:
- Understand what distinguishes a systematic review from a narrative review
- Follow PRISMA guidelines for transparent reporting
- Design a search strategy with clear inclusion and exclusion criteria
- Understand meta-analysis basics: effect sizes, forest plots, and heterogeneity
- Assess the quality of included studies using standard tools
- Deconstruct a published systematic review to see how all the pieces fit together

---

## 16.1 What Is a Systematic Review?

If a narrative review is a thoughtful essay about a field, a **systematic review** is an investigation. It follows a pre-defined, reproducible protocol to find, evaluate, and synthesize every relevant study on a specific question.

The key word is *systematic*. Every decision — what databases to search, what terms to use, which studies to include, how to assess quality — is made in advance and documented transparently. The goal is to minimize bias and maximize reproducibility.

A **meta-analysis** goes one step further: it uses statistical methods to combine the results of multiple studies into a single estimate of effect. Not every systematic review includes a meta-analysis (sometimes the studies are too different to combine), but every meta-analysis should be based on a systematic review.

### Why Systematic Reviews Matter

Systematic reviews sit at the top of the evidence hierarchy. They inform clinical guidelines, policy decisions, and future research priorities. In psychology, they are increasingly expected as a foundation for new empirical work — many PhD programs now require a systematic review as part of the thesis.

---

## 16.2 PRISMA: The Reporting Standard

**PRISMA** (Preferred Reporting Items for Systematic Reviews and Meta-Analyses) is a 27-item checklist and flow diagram that ensures transparency. Journals increasingly require PRISMA compliance. The updated PRISMA 2020 statement (Page et al., 2021) is the current standard.

### The PRISMA Flow Diagram

The flow diagram is the visual heart of a systematic review. It tracks how many studies were identified, screened, assessed for eligibility, and finally included.

```
Identification:
  Records identified through databases (n = ?)
  Records identified through other sources (n = ?)
  Duplicates removed (n = ?)

Screening:
  Records screened (n = ?)
  Records excluded (n = ?)

Eligibility:
  Full-text articles assessed (n = ?)
  Full-text articles excluded with reasons (n = ?)

Included:
  Studies included in qualitative synthesis (n = ?)
  Studies included in meta-analysis (n = ?)
```

**Common Mistake:** Skipping the flow diagram. Reviewers and editors want to see exactly how you got from thousands of records to your final sample. The diagram is not optional.

---

## 16.3 Developing Your Research Question

A systematic review begins with a precise question. In health and psychology, the **PICO** framework is standard:

- **P**opulation: Who are you studying? (e.g., adults with generalized anxiety disorder)
- **I**ntervention: What is being examined? (e.g., cognitive behavioral therapy)
- **C**omparison: Compared to what? (e.g., waitlist control, pharmacotherapy)
- **O**utcome: What are you measuring? (e.g., anxiety symptom severity)

For non-intervention reviews, you might use **PICo** (Population, phenomenon of Interest, Context) or **PECO** (Population, Exposure, Comparison, Outcome).

**Example PICO question**: "In adults with depression (P), does mindfulness-based cognitive therapy (I), compared to standard CBT (C), reduce depressive symptoms as measured by the BDI-II (O)?"

---

## 16.4 The Search Strategy

Your search strategy must be comprehensive enough to find all relevant studies, yet precise enough to be manageable.

### Step 1: Identify Databases

At minimum, search:
- **PubMed/MEDLINE** (biomedical literature)
- **PsycINFO** (psychology-specific)
- **Scopus** or **Web of Science** (multidisciplinary)
- **Cochrane Library** (for intervention reviews)
- **ProQuest Dissertations** (to find unpublished work and reduce publication bias)

### Step 2: Develop Search Terms

Break your PICO into concepts and generate synonyms:

```
P: "depression" OR "major depressive disorder" OR "depressive symptoms" OR "MDD"
I: "mindfulness-based cognitive therapy" OR "MBCT" OR "mindfulness-based therapy"
C: "cognitive behavioral therapy" OR "CBT" OR "cognitive behaviour therapy"
O: "BDI" OR "Beck Depression Inventory" OR "depression severity" OR "symptom reduction"
```

Combine with Boolean operators: (P terms) AND (I OR C terms) AND (O terms).

### Step 3: Apply Filters

Limit by date range, language, study design (e.g., only RCTs), and publication type (exclude editorials, commentaries).

### Step 4: Document Everything

Record the date of each search, the database, the exact search string, and the number of results. This goes in your methods section and ensures reproducibility.

**Pro Tip:** Use a reference manager (Zotero, Mendeley, or EndNote) from the start. Tag papers as "included," "excluded," or "uncertain" during screening. This saves enormous time later.

---

## 16.5 Inclusion and Exclusion Criteria

Define these before you start screening. A typical table looks like this:

| Criterion | Inclusion | Exclusion |
|---|---|---|
| Population | Adults (18+) diagnosed with MDD | Children, adolescents, bipolar disorder |
| Intervention | MBCT delivered in group format | Individual mindfulness therapy only |
| Comparator | Any active or passive control | No control group |
| Outcome | Validated depression measure (e.g., BDI-II, PHQ-9) | Qualitative outcomes only |
| Design | Randomized controlled trials | Case studies, cross-sectional surveys |
| Language | English | Non-English without translation |
| Date | 2010–2024 | Before 2010 |

**Common Mistake:** Making criteria too narrow and ending up with only 3–4 studies. Or making them too broad and drowning in irrelevant papers. Pilot your criteria on 20–30 abstracts to calibrate.

---

## 16.6 Screening and Selection

Screening is typically done in two stages:

1. **Title and abstract screening**: Quickly exclude obviously irrelevant papers. Two reviewers independently screen each record.
2. **Full-text screening**: Read the remaining papers and apply inclusion/exclusion criteria in detail.

Always have **two independent reviewers**. When they disagree, a third reviewer resolves the conflict. Report inter-rater reliability (Cohen's kappa) in your methods section.

---

## 16.7 Quality Assessment (Risk of Bias)

You must evaluate the methodological quality of each included study. Common tools include:

### For Randomized Controlled Trials
- **Cochrane Risk of Bias tool (RoB 2.0)**: Assesses bias in five domains — randomization process, deviations from intended interventions, missing outcome data, measurement of the outcome, and selection of reported results. Each domain is rated as "low risk," "some concerns," or "high risk."

### For Non-Randomized Studies
- **Newcastle-Ottawa Scale (NOS)**: Assesses selection, comparability, and outcome/exposure. Scores range from 0–9; studies scoring ≥7 are typically considered good quality.

### For Cross-Sectional Surveys
- **JBI (Joanna Briggs Institute) Critical Appraisal Checklist**: Specific to different study designs.

### For Qualitative Studies
- **CASP (Critical Apppraisal Skills Programme) Qualitative Checklist**

**Pro Tip:** Present quality assessment results in a table and a figure (traffic light plot or risk of bias summary). This makes it easy for readers to see the overall quality of your evidence base.

---

## 16.8 Data Extraction

Create a standardized data extraction form (spreadsheet or software tool). Extract:

- Author, year, country
- Sample size, demographics
- Intervention details (duration, frequency, format)
- Comparator details
- Outcome measures
- Main results (means, standard deviations, effect sizes, p-values)
- Quality rating

Two reviewers should extract independently and compare.

---

## 16.9 Meta-Analysis Basics

When studies report similar outcomes on comparable populations, you can statistically combine their results. Here is how:

### 16.9.1 Effect Sizes

An **effect size** quantifies the magnitude of a difference or relationship. Common measures include:

- **Standardized Mean Difference (SMD or Cohen's d)**: Used when studies measure the same construct with different scales. d = (Mean₁ - Mean₂) / Pooled SD. Interpretation: 0.2 = small, 0.5 = medium, 0.8 = large.
- **Odds Ratio (OR)**: Used for binary outcomes (e.g., remission yes/no). OR = 1 means no difference; OR > 1 favors treatment.
- **Risk Ratio (RR)**: Similar to OR but easier to interpret clinically.
- **Correlation coefficient (r)**: Used for relationships between variables.

### 16.9.2 The Forest Plot

A **forest plot** is the visual output of a meta-analysis. Each study is represented by a square (the point estimate) and a horizontal line (the confidence interval). The size of the square reflects the study's weight (usually based on sample size and precision). A diamond at the bottom represents the pooled estimate.

```
Study                    SMD [95% CI]          Weight
─────────────────────────────────────────────────────
Smith et al. (2018)     -0.45 [-0.78, -0.12]   18.2%
Jones et al. (2019)     -0.62 [-0.95, -0.29]   16.8%
Lee et al. (2020)       -0.31 [-0.64, 0.02]    17.5%
Patel et al. (2021)     -0.73 [-1.10, -0.36]   14.2%
Garcia et al. (2022)    -0.55 [-0.88, -0.22]   16.1%
Wang et al. (2023)      -0.40 [-0.73, -0.07]   17.2%
─────────────────────────────────────────────────────
Pooled (Random effects)  -0.51 [-0.65, -0.37]  100.0%

Test for overall effect: Z = 7.12, p < .001
```

How to read this: Negative values favor treatment. The pooled SMD of -0.51 indicates a medium effect. All confidence intervals (except Lee et al.) exclude zero, meaning most individual studies found a statistically significant effect.

### 16.9.3 Fixed-Effects vs. Random-Effects Models

- **Fixed-effects model**: Assumes all studies estimate the same true effect. Appropriate when studies are very similar (same population, same intervention, same outcome).
- **Random-effects model**: Assumes true effects vary across studies. More appropriate when there is clinical or methodological heterogeneity. This is the more conservative and commonly used approach.

**Rule of thumb**: When in doubt, use random-effects.

### 16.9.4 Heterogeneity

Heterogeneity refers to variability among study results beyond what you would expect from chance alone.

- **I² statistic**: Ranges from 0% to 100%. Interpretation: 0–25% = low, 25–50% = moderate, 50–75% = substantial, >75% = considerable heterogeneity.
- **Cochran's Q test**: A significant Q (p < .10) indicates heterogeneity is present.
- **Tau² (τ²)**: Estimates the between-study variance in a random-effects model.

When heterogeneity is high (I² > 75%), consider:
- Subgroup analysis (e.g., by population, intervention type, or study quality)
- Meta-regression (examining whether study-level variables explain the heterogeneity)
- Narrative synthesis instead of pooled estimate

### 16.9.5 Publication Bias

Studies with significant results are more likely to be published. This can inflate your meta-analytic estimate. Assess publication bias using:

- **Funnel plot**: Plot effect size against study precision (usually 1/SE). Asymmetry suggests bias.
- **Egger's test**: A statistical test for funnel plot asymmetry.
- **Trim-and-fill**: A method that estimates how many missing studies there might be and adjusts the pooled estimate.

---

## 16.10 Worked Example: Deconstructing a Systematic Review

Let us examine the structure of a real systematic review to see how these elements come together.

**Paper**: Cuijpers, P., Noma, H., Karyotaki, E., Cipriani, A., & Furukawa, T. A. (2019). Effectiveness and acceptability of cognitive behavior therapy for depression: A component network meta-analysis. *World Psychiatry*, 18(2), 159–171.

### Title
The title names the topic (CBT for depression), the method (component network meta-analysis), and the outcomes (effectiveness and acceptability). Transparent and precise.

### Abstract
Structured with Background, Methods, Results, and Conclusions. The Methods section specifies the databases searched (PubMed, PsycINFO, Embase, Cochrane), the number of studies included (n = 115), and the type of analysis (network meta-analysis).

### Introduction
The introduction establishes CBT as the most studied psychotherapy for depression, notes that CBT is a complex intervention with multiple components (behavioral activation, cognitive restructuring, etc.), and argues that understanding which components are most effective could improve treatment. The research question is clearly stated.

### Methods

This is the most detailed section and demonstrates rigor:

1. **Protocol registration**: The authors reference a pre-registered protocol (PROSPERO). This prevents post-hoc changes to the research question or methods.
2. **Search strategy**: Databases, search terms, date ranges, and language restrictions are specified.
3. **Eligibility criteria**: PICO criteria are listed in a table. Only RCTs comparing CBT (or its components) to control conditions for adults with depression.
4. **Study selection**: Two authors independently screened titles, abstracts, and full texts. Disagreements were resolved by discussion.
5. **Data extraction**: A standardized form was used. Two authors extracted data independently.
6. **Risk of bias**: Assessed using the Cochrane RoB tool.
7. **Statistical analysis**: Network meta-analysis was conducted using a frequentist approach. Effect sizes were calculated as standardized mean differences. Heterogeneity was assessed with I² and τ². Publication bias was assessed with comparison-adjusted funnel plots.

### Results

The results section presents:

- **PRISMA flow diagram**: 6,916 records identified → 115 RCTs included.
- **Study characteristics table**: Sample sizes, populations, intervention details.
- **Risk of bias summary**: Most studies had "some concerns" or "high risk" in at least one domain.
- **Main findings**: CBT was significantly more effective than control conditions (SMD = -0.55, 95% CI [-0.63, -0.48]). Network meta-analysis showed that behavioral activation and cognitive restructuring were the most effective components.
- **Heterogeneity**: Moderate (I² = 45%).
- **Publication bias**: Funnel plot showed slight asymmetry; trim-and-fill analysis suggested minimal impact on the pooled estimate.

### Discussion

The discussion:
- Summarizes the main finding (CBT is effective, behavioral activation and cognitive restructuring are key components)
- Compares findings to prior meta-analyses
- Discusses limitations (risk of bias in primary studies, variability in how CBT components were delivered)
- Offers clinical implications (therapists should prioritize behavioral activation and cognitive restructuring)
- Suggests future research (component interaction effects, dose-response relationships)

---

## 16.11 Differences Between Narrative and Systematic Reviews

| Dimension | Narrative Review | Systematic Review |
|---|---|---|
| Question | Broad | Specific (PICO) |
| Protocol | None required | Pre-registered |
| Search | Selective | Exhaustive, documented |
| Selection | Author judgment | Explicit criteria, dual screening |
| Quality assessment | Usually absent | Required (RoB, NOS, etc.) |
| Synthesis | Narrative | Statistical (meta-analysis) or structured |
| Bias control | Limited | Built into every step |
| Reproducibility | Low | High |
| Time required | Weeks | Months to years |
| Journal type | Review journals, invited commentaries | Systematic review journals, high-impact outlets |

---

## 16.12 Software Tools for Systematic Reviews

| Tool | Purpose | Cost |
|---|---|---|
| **Covidence** | Screening, data extraction, PRISMA flow | Paid (free for Cochrane) |
| **Rayyan** | Screening (AI-assisted) | Free basic version |
| **RevMan** (Cochrane) | Meta-analysis, forest plots, RoB tables | Free |
| **R** (meta, metafor packages) | Flexible meta-analysis | Free |
| **Stata** (metan, metareg) | Meta-analysis and meta-regression | Paid |
| **JASP** | Bayesian and frequentist meta-analysis | Free |
| **G*Power** | Power analysis for meta-analysis planning | Free |
| **PROSPERO** | Protocol registration | Free |

---

## 16.13 Template: Methods Section for a Systematic Review

```markdown
## Methods

### Protocol and Registration
This systematic review was conducted following the PRISMA 2020 guidelines 
(Page et al., 2021). The protocol was registered with PROSPERO 
(CRD42024XXXXXX).

### Search Strategy
A systematic search was conducted on [date] across [databases]. The full 
search strategy for PubMed is presented in Appendix A. Search terms included 
[brief description]. No language or date restrictions were applied.

### Eligibility Criteria
Studies were included if they: (1) examined [population]; (2) investigated 
[intervention/exposure]; (3) included [comparison]; (4) measured [outcome]; 
and (5) used [design]. Studies were excluded if [exclusion criteria].

### Study Selection
Two reviewers (XX and YY) independently screened titles and abstracts, then 
full texts. Disagreements were resolved through discussion with a third 
reviewer (ZZ). Inter-rater reliability was κ = [value].

### Data Extraction
A standardized data extraction form was used to collect: [list variables]. 
Two reviewers extracted data independently and compared results.

### Quality Assessment
Risk of bias was assessed using [tool name]. Each study was rated as 
[low/some concerns/high] risk of bias.

### Statistical Analysis
[Describe meta-analysis approach, effect size measure, heterogeneity 
assessment, publication bias assessment, and software used.]
```

---

## 16.14 Checklist: Before You Submit

- [ ] Protocol is registered (PROSPERO or OSF)
- [ ] PRISMA 2020 checklist is completed and submitted
- [ ] PRISMA flow diagram is included
- [ ] Search strategy is fully documented (at least one full search string in appendix)
- [ ] Inclusion/exclusion criteria are in a table
- [ ] Two reviewers screened independently with inter-rater reliability reported
- [ ] Quality assessment tool is appropriate for study designs included
- [ ] Data extraction is described with a standardized form
- [ ] Meta-analysis (if conducted) reports effect sizes, CIs, I², τ², and Q
- [ ] Publication bias is assessed (funnel plot, Egger's test)
- [ ] Forest plots are clear and labeled
- [ ] Discussion addresses limitations of the review (not just the studies)
- [ ] PRISMA checklist is referenced and submitted as supplementary material

---

## 16.15 Common Mistakes in Systematic Reviews

**Mistake 1: Post-hoc Protocol**

Writing the protocol after you have already done the search. Register your protocol before you begin screening. Reviewers can check PROSPERO.

**Mistake 2: Inadequate Search**

Searching only one or two databases. The minimum is three, and you should also search grey literature (dissertations, conference abstracts) to reduce publication bias.

**Mistake 3: Single Reviewer Screening**

One person doing all the screening introduces selection bias. Always use two independent reviewers.

**Mistake 4: Ignoring Heterogeneity**

Pooling studies that are too different (e.g., different populations, interventions, or outcomes) into a single estimate. If I² is very high, consider subgroup analysis or narrative synthesis.

**Mistake 5: Not Reporting Negative Results**

If your meta-analysis finds no significant effect, report it. Non-significant results are valuable and contribute to the evidence base.

**Mistake 6: Confusing Quality Assessment with Inclusion**

Quality assessment informs your interpretation (e.g., sensitivity analysis excluding high-risk studies), not your inclusion criteria. Do not exclude studies solely based on quality unless you specified this in your protocol.

---

## 16.16 Key Takeaways

1. A systematic review is a rigorous, transparent, and reproducible investigation — not a summary.
2. PRISMA is the gold standard for reporting. Follow it from the start.
3. Register your protocol before you begin.
4. Quality assessment is mandatory, not optional.
5. Meta-analysis is powerful but requires understanding effect sizes, heterogeneity, and bias.
6. Use appropriate software (R, RevMan, Covidence) to manage the process efficiently.
7. The difference between a good systematic review and a great one is in the details: transparent methods, honest interpretation, and clear implications.

---

## Further Reading

- Page, M. J., et al. (2021). The PRISMA 2020 statement: An updated guideline for reporting systematic reviews. *BMJ*, 372, n71.
- Higgins, J. P. T., et al. (2019). *Cochrane Handbook for Systematic Reviews of Interventions* (Version 6.0). Cochrane.
- Borenstein, M., et al. (2009). *Introduction to Meta-Analysis*. Wiley.
- Lakens, D. (2013). Calculating and reporting effect sizes to facilitate cumulative science. *Frontiers in Psychology*, 4, 863.

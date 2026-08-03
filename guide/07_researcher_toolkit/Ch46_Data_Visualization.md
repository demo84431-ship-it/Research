# Chapter 34: Data Visualization

## Opening

A well-designed figure can communicate in seconds what takes pages of text to explain. Data visualization is not about making your paper look pretty — it is about making your findings clear, accurate, and memorable. In psychology research, effective visualization can mean the difference between a reviewer who immediately understands your results and one who gives up in confusion. This chapter covers the principles of good data visualization, the types of figures commonly used in psychology, tools for creating them, and the mistakes that make reviewers cringe.

---

## 34.1 Why Visualization Matters

Data visualization serves multiple purposes:

1. **Communication** — Conveys complex results quickly and clearly
2. **Exploration** — Helps you understand your own data during analysis
3. **Transparency** — Shows patterns (and anomalies) that summary statistics might hide
4. **Persuasion** — A compelling figure strengthens your argument

> *Example:* A bar chart comparing anxiety scores across three groups immediately shows which group differs. The same information in a table requires the reader to compare numbers manually.

---

## 34.2 Principles of Good Visualization

### 34.2.1 Clarity

Every element should have a purpose. Remove anything that does not convey information.

- **Remove gridlines** unless they help read values
- **Remove 3D effects** — they distort perception
- **Remove legends** if you can label directly on the figure
- **Use clear, descriptive titles**

### 34.2.2 Accuracy

Visualizations must represent data truthfully:

- **Start axes at zero** for bar charts (truncating axes exaggerates differences)
- **Maintain aspect ratios** — do not stretch or compress figures
- **Show variability** — include error bars or confidence intervals
- **Do not cherry-pick** — show all relevant data, not just the significant results

### 34.2.3 Simplicity

Less is more:

- **Limit colors** — 3–5 colors maximum
- **Limit categories** — If you have 20 groups, consider combining or selecting
- **One message per figure** — Each figure should convey one main point
- **Consistent style** — Use the same fonts, colors, and formatting across all figures

### 34.2.4 Accessibility

Your figures should be readable by everyone:

- **Color-blind friendly palettes** — Avoid red-green combinations
- **High contrast** — Dark text on light backgrounds
- **Large enough fonts** — At least 10pt when printed
- **Patterns in addition to colors** — Use hatching or shapes for color-blind readers

---

## 34.3 Common Figure Types in Psychology

### 34.3.1 Bar Charts

**Use when:** Comparing means across groups or conditions

**Best practices:**
- Start y-axis at zero
- Include error bars (typically 95% CI or SE)
- Use consistent colors within the same paper
- Label each bar directly if possible

> *Example:* A bar chart showing mean anxiety scores for three groups (mindfulness, exercise, control) with 95% confidence intervals.

### 34.3.2 Line Graphs

**Use when:** Showing trends over time or across continuous variables

**Best practices:**
- Use solid lines for main findings, dashed for secondary
- Include data points at each time measurement
- Shade confidence intervals around the line
- Label lines directly rather than using a legend

> *Example:* A line graph showing anxiety scores at baseline, 4 weeks, 8 weeks, and 12 weeks for treatment and control groups.

### 34.3.3 Scatter Plots

**Use when:** Showing the relationship between two continuous variables

**Best practices:**
- Include the regression line and confidence band
- Report the correlation coefficient on the figure
- Use transparency if points overlap
- Consider adding marginal histograms

> *Example:* A scatter plot of social media use (x-axis) vs. anxiety (y-axis) with a regression line and r = .34 displayed.

### 34.3.4 Box Plots

**Use when:** Showing distribution, median, quartiles, and outliers

**Best practices:**
- Show individual data points (jittered) alongside the box
- Clearly label the median, IQR, and whiskers
- Use for comparing distributions across groups

> *Example:* Box plots comparing anxiety score distributions for three age groups, with individual data points overlaid.

### 34.3.5 Histograms

**Use when:** Showing the distribution of a single variable

**Best practices:**
- Choose appropriate bin width (too few = flat, too many = noisy)
- Include a density curve if helpful
- Label axes clearly with units

### 34.3.6 Heatmaps

**Use when:** Showing correlations between multiple variables or patterns across two dimensions

**Best practices:**
- Use a diverging color scale (e.g., blue-white-red for correlations from -1 to +1)
- Include the correlation values in each cell
- Cluster similar variables together

> *Example:* A correlation heatmap showing relationships between anxiety, depression, self-esteem, sleep quality, and social media use.

### 34.3.7 Forest Plots

**Use when:** Displaying effect sizes and confidence intervals from multiple studies (meta-analysis) or multiple predictors (regression)

**Best practices:**
- Sort by effect size or by subgroup
- Use a vertical reference line at zero (or one for odds ratios)
- Include a summary diamond for the overall effect

---

## 34.4 Tools for Visualization

| Tool | Type | Difficulty | Cost |
|------|------|------------|------|
| **R (ggplot2)** | Code-based | Moderate | Free |
| **Python (matplotlib/seaborn)** | Code-based | Moderate | Free |
| **SPSS** | Point-and-click | Easy | Paid |
| **Excel** | Point-and-click | Easy | Paid |
| **Tableau** | Point-and-click | Easy-Moderate | Free (public) |
| **Adobe Illustrator** | Design | Advanced | Paid |
| **BioRender** | Scientific illustrations | Easy | Free (limited) |
| **Canva** | General design | Easy | Free (limited) |

> **Pro Tip:** For publication-quality figures, use R (ggplot2) or Python (seaborn). They produce clean, customizable figures and are reproducible — you can regenerate figures with one click if your data changes.

---

## 34.5 APA Guidelines for Figures

APA 7th edition has specific formatting requirements:

| Element | Rule |
|---------|------|
| **Number** | Figure 1, Figure 2 (italicized in text) |
| **Title** | Italicized, below the figure |
| **Note** | Below the title, explaining abbreviations or symbols |
| **Font** | Sans serif (e.g., Arial, Helvetica), 8–14pt |
| **Resolution** | At least 300 dpi for print |
| **Color** | Acceptable for online; consider grayscale for print |
| **Placement** | After the paragraph where first mentioned, or on a separate page |

---

## 34.6 Common Mistakes

1. **3D effects** — They distort perception and add no information
2. **Truncated axes** — Starting a bar chart at a non-zero value exaggerates differences
3. **Missing error bars** — Always show variability
4. **Too many colors** — Use 3–5 maximum
5. **Pie charts** — Generally avoided in scientific papers; humans are bad at comparing angles
6. **No figure title or labels** — Every figure must be interpretable on its own
7. **Low resolution** — Blurry figures look unprofessional
8. **Inconsistent style** — All figures in a paper should use the same formatting

> *Example:* **Bad:** A 3D pie chart with 12 slices, no labels, and a truncated legend. **Good:** A horizontal bar chart with 5 categories, direct labels, and clear axis titles.

---

## 34.7 Visualizing Qualitative Data

Qualitative research can also benefit from visualization:

- **Word clouds** — Show frequency of terms (use sparingly; they are not very precise)
- **Thematic maps** — Show relationships between themes and subthemes
- **Network diagrams** — Show connections between codes or concepts
- **Timeline diagrams** — Show chronological development of themes
- **Participant characteristic tables** — Summarize demographic information

> *Example:* A thematic map showing three main themes (Digital Fatigue, Social Comparison, Coping Strategies) with 2–3 subthemes each, connected by lines showing relationships.

---

## Key Takeaways

- Data visualization **communicates findings clearly, accurately, and memorably**.
- Follow the principles of **clarity, accuracy, simplicity, and accessibility**.
- Common figure types in psychology: **bar charts, line graphs, scatter plots, box plots, heatmaps, forest plots**.
- Use **R (ggplot2)** or **Python (seaborn)** for publication-quality, reproducible figures.
- Follow **APA 7th edition** formatting for figures — numbering, titles, fonts, resolution.
- **Avoid 3D effects, truncated axes, pie charts, and low-resolution images**.
- **Qualitative data** can also be visualized using thematic maps, network diagrams, and timelines.

---

## Practice Questions

1. You have data comparing anxiety scores across four groups (mindfulness, CBT, exercise, control). Create an appropriate figure, including all necessary labels and error bars.
2. A colleague creates a bar chart showing group differences, but the y-axis starts at 8 instead of 0. Why is this problematic? How would you fix it?
3. Explain when you would use a scatter plot vs. a bar chart vs. a line graph. Provide one example of each.
4. You are creating a correlation matrix for 8 variables. What type of visualization would you use? What design choices would you make?
5. Design a figure for a longitudinal study showing depression scores at 4 time points for treatment and control groups. What elements must be included?

---

*In the final chapter, we will explore research ethics — the principles and practices that ensure your research is conducted responsibly and with integrity.*

# Chapter 31: Statistical Software — A Comprehensive Guide

## Choosing the Right Tool for the Job

Statistical software is where many psychology students feel overwhelmed. The options seem endless, the interfaces are intimidating, and the stakes are high — your analysis determines whether your results are publishable. This chapter demystifies the major statistical tools, walks you through complete workflows, and helps you choose the right software for each situation.

The good news: you do not need to master every tool. You need to master one or two and know when the others are useful. Since you already know SPSS, we will use that as your foundation and build from there.

---

## SPSS: Your Workhorse (Complete Workflow)

SPSS (Statistical Package for the Social Sciences) is the most widely used statistical software in psychology departments worldwide. You already know it, so let us make sure you are using it efficiently.

### The Complete SPSS Workflow

**Step 1: Data Entry and Setup**

When you open SPSS, you see two views:
- **Data View** — a spreadsheet where each row is a participant and each column is a variable.
- **Variable View** — where you define your variables.

In Variable View, set up each column:
- **Name:** Short variable name (no spaces). Example: `age`, `gender`, `wm_score`, `rt_ms`.
- **Type:** Numeric for numbers, String for text.
- **Decimals:** Set to 0 for whole numbers (age, Likert scales), 2 for scores with decimals.
- **Label:** A human-readable description. Example: "Working Memory Score (backward digit span)."
- **Values:** For coded variables, assign labels. Example: 1 = Male, 2 = Female, 3 = Non-binary.
- **Measure:** Scale (continuous), Ordinal (ranked), or Nominal (categories).

> **Pro Tip:** Spend 10 minutes setting up Variable View properly before entering data. It saves hours of confusion later and ensures your analyses run correctly.

**Step 2: Data Cleaning**

Before any analysis, clean your data:
1. **Check for out-of-range values:** Analyze → Descriptive Statistics → Frequencies. Look for impossible values (e.g., age = 999).
2. **Handle missing data:** Edit → Find (Ctrl+F) to search for blank cells. Decide on your strategy — listwise deletion, pairwise deletion, or imputation.
3. **Check for duplicates:** Data → Identify Duplicate Cases.
4. **Reverse-code negatively worded items:** Transform → Recode into Different Variables. For a 5-point scale, reverse with: new = 6 - old.

**Step 3: Descriptive Statistics**

Analyze → Descriptive Statistics → Descriptives (for continuous variables) or Frequencies (for categorical variables).

For a quick overview of your data:
- Analyze → Descriptive Statistics → Explore
- This gives you means, standard deviations, skewness, kurtosis, and boxplots — everything you need to check assumptions.

**Step 4: Assumption Testing**

Before running inferential tests, check assumptions:
- **Normality:** Analyze → Descriptive Statistics → Explore → Plots → Check "Normality plots with tests." Look at the Shapiro-Wilk test (p > .05 suggests normality) and the Q-Q plot (points should fall along the diagonal line).
- **Homogeneity of variance:** When running ANOVA, SPSS automatically reports Levene's test in the output.
- **Linearity and homoscedasticity:** For regression, check the scatterplot of residuals vs. predicted values (produced in the regression dialog).

**Step 5: Running Your Analysis**

The exact menu path depends on your analysis. Common ones:
- **t-test:** Analyze → Compare Means → Independent-Samples T Test
- **ANOVA:** Analyze → General Linear Model → Univariate
- **Correlation:** Analyze → Correlate → Bivariate
- **Regression:** Analyze → Regression → Linear
- **Chi-square:** Analyze → Descriptive Statistics → Crosstabs → Statistics → Check "Chi-square"
- **Factor Analysis:** Analyze → Dimension Reduction → Factor

**Step 6: Reading the Output**

SPSS output appears in the Output Viewer window. Key things to look for:

For a t-test:
- Look at the "Independent Samples Test" table.
- First check Levene's test. If significant (p < .05), read the "Equal variances not assumed" row.
- Then check the t-test row for the t-value, degrees of freedom (df), and significance (p-value).
- The mean difference and confidence interval tell you the magnitude and precision of the effect.

For ANOVA:
- Look at the "Tests of Between-Subjects Effects" table.
- Find your factor row. Check the F-value, df, and Sig. (p-value).
- If significant, follow up with post-hoc tests (Tukey HSD, Bonferroni, etc.).

For Regression:
- The "Model Summary" table shows R² (how much variance is explained).
- The "ANOVA" table shows whether the overall model is significant.
- The "Coefficients" table shows each predictor's B, Beta, t, and p-value.

**Step 7: Exporting Results**

- **Tables:** Right-click any table in the Output Viewer → Copy. Paste into Word.
- **Figures:** Right-click → Copy. Or double-click to edit in the Chart Editor, then copy.
- **Export everything:** File → Export → choose format (Word, PDF, HTML).

> **Pro Tip:** SPSS's default tables are ugly. Right-click a table → Table Properties → toggle off the borders and shading, or use Edit → Options → Pivot Tables to set a cleaner default style. Better yet, use syntax to generate APA-formatted tables: `OMS` (Output Management System) can route specific tables directly to Word format.

---

## R and RStudio: The Power Tool

R is a free, open-source programming language for statistics. It is the gold standard in quantitative psychology research and the tool behind most modern statistical methods. If you plan to do a PhD or publish in top journals, learning R is a worthwhile investment.

### Getting Started

1. **Install R:** Download from [cran.r-project.org](https://cran.r-project.org/).
2. **Install RStudio:** Download the free version from [posit.co](https://posit.co/). RStudio is an integrated development environment (IDE) that makes R much more user-friendly.

RStudio has four panels:
- **Source (top-left):** Where you write scripts.
- **Console (bottom-left):** Where code runs and output appears.
- **Environment (top-right):** Shows your current data and variables.
- **Files/Plots/Help (bottom-right):** File browser, plot viewer, and documentation.

### Your First R Session

```r
# Install key packages (run once)
install.packages(c("psych", "lavaan", "lme4", "tidyverse", 
                    "effectsize", "ggplot2", "car"))

# Load packages (run each session)
library(psych)
library(tidyverse)

# Import data
mydata <- read.csv("my_data.csv")

# View the data
View(mydata)
str(mydata)
summary(mydata)

# Descriptive statistics
describe(mydata$age)
describe(mydata[, c("age", "wm_score", "anxiety_score")])

# Correlation matrix
cor_matrix <- cor(mydata[, c("wm_score", "anxiety_score", "rt_ms")], 
                  use = "complete.obs")
round(cor_matrix, 2)

# t-test
t.test(wm_score ~ gender, data = mydata)

# Linear regression
model <- lm(anxiety_score ~ wm_score + age, data = mydata)
summary(model)
```

### Key R Packages for Psychology

| Package | Purpose | Example Function |
|---|---|---|
| `psych` | Descriptive stats, reliability, factor analysis | `describe()`, `alpha()`, `fa()` |
| `lavaan` | Structural equation modeling, CFA | `cfa()`, `sem()` |
| `lme4` | Multilevel/mixed-effects models | `lmer()`, `glmer()` |
| `tidyverse` | Data wrangling and visualization | `filter()`, `mutate()`, `ggplot()` |
| `effectsize` | Effect size calculations | `cohens_d()`, `eta_squared()` |
| `car` | Regression diagnostics, ANOVA type III | `vif()`, `Anova()` |
| `BayesFactor` | Bayesian hypothesis testing | `ttestBF()`, `anovaBF()` |

### Why Learn R?

- **Reproducibility:** Your entire analysis is a script. Anyone can re-run it and get the same results.
- **Flexibility:** R can do virtually any statistical analysis, including methods not available in SPSS.
- **Visualization:** `ggplot2` produces publication-quality figures that make SPSS charts look prehistoric.
- **Cost:** Free. Forever. No institutional license needed.
- **Community:** Thousands of tutorials, Stack Overflow answers, and YouTube videos.

> **Pro Tip:** Start by doing analyses you already know in SPSS using R. Replicate a t-test, ANOVA, or regression in R. Once you see how the workflow translates, you will gain confidence quickly. The `learnr` package provides interactive tutorials right in RStudio.

---

## JASP: Free, Beautiful, and User-Friendly

JASP (jasp-stats.org) is a free, open-source statistical package that combines the ease of SPSS with modern statistical methods, including Bayesian analysis. It is developed at the University of Amsterdam and is becoming the recommended tool in many psychology programs.

### Why JASP?

- **No syntax required:** Point-and-click interface, like SPSS.
- **Built-in Bayesian analysis:** Every frequentist test has a Bayesian equivalent, one click away.
- **Live results:** Output updates in real time as you change options.
- **APA-formatted tables:** Tables look publication-ready by default.
- **Free:** No cost, no licensing issues.

### JASP Workflow

1. Open JASP and load your data (File → Open → select CSV, Excel, or SPSS file).
2. Click the "Analyses" tab in the top menu.
3. Select your analysis from the menu (e.g., T-Tests → Independent Samples T-Test).
4. Drag variables into the appropriate boxes.
5. Check options (effect size, confidence intervals, assumption checks).
6. Read the output — it appears instantly in the right panel.
7. Right-click any table or figure → Copy or Save.

### When to Use JASP

- You want Bayesian analysis without learning R.
- You want clean, APA-formatted output without formatting effort.
- You are teaching or presenting — JASP's interface is intuitive for audiences.
- You do not need advanced methods like multilevel modeling or SEM (JASP does not yet support these fully).

---

## jamovi: The Modern Open-Source Alternative

jamovi (jamovi.org) is another free, open-source alternative to SPSS. It is built on R (so it uses R's statistical engines) but presents a familiar spreadsheet interface.

### jamovi's Strengths

- **R integration:** Every analysis in jamovi has an R equivalent. You can see the R syntax (and copy it), making jamovi a gentle bridge to learning R.
- **Module system:** Install additional modules for SEM (`SEMinR`), mediation (`Mediation`), and other advanced analyses.
- **Familiar interface:** If you know SPSS, jamovi feels immediately comfortable.
- **Live analysis:** Changes update the output instantly.

### When to Use jamovi

- You want to transition from SPSS to R gradually.
- You need a free tool that handles common psychology analyses.
- You want to see the R code behind your analyses without writing it from scratch.

> **Free Alternative:** Both JASP and jamovi are completely free and handle the vast majority of analyses needed for psychology research. If your institution does not provide SPSS, either of these is a fully capable replacement.

---

## G*Power: Sample Size and Power Analysis

G*Power (gpower.hhu.de) is a free tool specifically designed for power analysis and sample size calculation. If you are planning a study, you need G*Power.

### What is Power Analysis?

Power is the probability that your test will detect an effect if one truly exists. Conventionally, you want power ≥ .80 (80% chance of detecting a real effect). Power depends on:
- **Effect size:** Larger effects are easier to detect.
- **Alpha level:** Usually .05.
- **Sample size:** Larger samples give more power.
- **Statistical test:** Some tests are more powerful than others.

### G*Power Workflow

**Example: How many participants do I need for an independent t-test?**

1. Open G*Power.
2. Test family: t-test.
3. Statistical test: Means: Difference between two independent means (two groups).
4. Type of power analysis: A priori: Compute required sample size.
5. Input parameters:
   - Effect size d: 0.5 (medium effect, Cohen's convention).
   - α err prob: 0.05.
   - Power (1-β err prob): 0.80.
   - Allocation ratio: 1 (equal group sizes).
6. Click "Calculate."
7. G*Power reports: Total sample size = 128 (64 per group).

**Example: Sample size for a correlation**

1. Test family: Exact.
2. Statistical test: Correlation: Bivariate normal model.
3. Type of power analysis: A priori.
4. Input: Effect size ρ = 0.3 (medium), α = .05, Power = .80.
5. Result: Sample size = 84.

### Common Effect Sizes to Enter

| Analysis | Small | Medium | Large |
|---|---|---|---|
| t-test (Cohen's d) | 0.2 | 0.5 | 0.8 |
| Correlation (r) | 0.1 | 0.3 | 0.5 |
| ANOVA (f) | 0.1 | 0.25 | 0.4 |
| Regression (f²) | 0.02 | 0.15 | 0.35 |
| Chi-square (w) | 0.1 | 0.3 | 0.5 |

> **Pro Tip:** Never use "small," "medium," or "large" effect sizes without justification. Look at prior research on your topic. If previous studies found an effect of d = 0.4, use that in your power analysis. Using Cohen's generic conventions is a last resort.

---

## When to Use Which Tool

| Situation | Recommended Tool |
|---|---|
| Quick descriptive stats and t-tests | SPSS, JASP, or jamovi |
| Standard ANOVA, regression, correlation | Any of the above |
| Bayesian analysis | JASP or R |
| Multilevel modeling | R (`lme4`) or SPSS (`MIXED`) |
| Structural equation modeling | R (`lavaan`), AMOS (SPSS add-on), or Mplus |
| Power analysis | G*Power |
| Complex data wrangling | R (`tidyverse`) |
| Publication-quality figures | R (`ggplot2`) |
| Student thesis with simple analyses | SPSS, JASP, or jamovi |
| Free and no license issues | JASP, jamovi, R, G*Power |

---

## Interpreting Common Outputs: A Quick Reference

### SPSS t-test Output

```
                      Levene's Test    t-test
                      F      Sig.    t      df    Sig.(2-t)  Mean Diff
wm_score  Equal var  1.234   .268   -2.45   126    .015      -1.34
                   Equal var not assumed  -2.44  121.3  .016    -1.34
```

**How to read this:**
1. Levene's F = 1.234, p = .268. Since p > .05, variances are equal. Read the top row.
2. t(126) = -2.45, p = .015. Significant difference.
3. The group scored 1.34 points lower on average.

### R Regression Output

```
Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)   45.23      3.12   14.50   < 2e-16 ***
wm_score       0.89      0.34    2.62    0.010 *  
age           -0.12      0.08   -1.50    0.136    
```

**How to read this:**
1. Intercept (45.23): predicted anxiety when wm_score = 0 and age = 0 (often not meaningful).
2. wm_score: B = 0.89, t = 2.62, p = .010. For each 1-unit increase in working memory, anxiety increases by 0.89 units. Significant.
3. age: B = -0.12, t = -1.50, p = .136. Not significant.

### JASP ANOVA Output

```
ANOVA - wm_score
                    Sum Sq   df   Mean Sq   F      p      η²p
Condition           156.32    2    78.16   5.43   .006   .08
Residual           1824.56  127    14.37
```

**How to read this:**
1. Condition: F(2, 127) = 5.43, p = .006. Significant effect of condition.
2. Partial eta squared (η²p) = .08. According to Cohen, this is a medium-to-large effect.
3. Follow up with post-hoc tests to see which conditions differ.

---

## Practical Exercise

Try this sequence to build your skills:

1. **In SPSS:** Open a dataset, run descriptives, check normality, run a t-test, and export the output to Word.
2. **In RStudio:** Import the same dataset, replicate the t-test with `t.test()`, and create a boxplot with `ggplot2`.
3. **In JASP:** Load the same data, run the t-test with both frequentist and Bayesian options. Compare the results.
4. **In G*Power:** Calculate the required sample size for your study. Is your actual sample adequate?

This exercise shows you that the same data and the same question yield consistent answers across tools. The software is just the vehicle — the statistical thinking is what matters.

---

## Common Mistakes to Avoid

1. **Treating software output as truth.** Software will happily run any analysis you request, even if the assumptions are violated or the analysis is inappropriate. Always check assumptions first.
2. **Not learning the output.** Knowing which buttons to click is useless if you cannot interpret what comes out. Spend time understanding each number in the output tables.
3. **Over-relying on p-values.** Report effect sizes and confidence intervals alongside p-values. A statistically significant result with a trivially small effect size is not practically meaningful.
4. **Not saving your syntax/code.** In SPSS, always use syntax (File → New → Syntax) rather than just clicking menus. Syntax is your reproducible record. In R, scripts serve the same purpose.
5. **Running every test and cherry-picking.** Decide your analysis plan before looking at results. Exploratory analyses are fine, but label them as such.

---

## Summary

You do not need to master every statistical tool. You need to be proficient in one (SPSS for most psychology students), familiar with a second (JASP, jamovi, or R), and know how to use G*Power for sample size planning. The tool is secondary to the thinking — understand what your analysis does, what assumptions it requires, and how to interpret the output. Software changes; statistical reasoning is permanent.

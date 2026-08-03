# Chapter 19: Experimental Study

## Opening

The experimental study is the gold standard for establishing cause-and-effect relationships. While surveys can tell you that two variables are correlated, experiments can tell you whether one variable actually causes changes in another. In psychology, experiments have revealed that sleep deprivation impairs decision-making, that priming can influence behavior, and that specific therapies are more effective than placebos. This chapter walks you through the design, execution, and reporting of experimental studies in psychology, with worked examples relevant to your research interests.

---

## 19.1 What Makes an Experiment?

An experiment has three essential features:

1. **Manipulation** — The researcher changes one variable (the independent variable) while holding others constant
2. **Control** — A comparison condition (control group or baseline) that does not receive the manipulation
3. **Random assignment** — Participants are randomly assigned to conditions, ensuring groups are equivalent at the start

Without all three, you have a quasi-experiment, not a true experiment.

> *Example:* To test whether caffeine improves reaction time, you randomly assign participants to drink either caffeinated coffee (experimental group) or decaffeinated coffee (control group), then measure their reaction time on a computerized task. The manipulation is caffeine, the control is decaf, and random assignment ensures groups are comparable.

---

## 19.2 Key Terminology

| Term | Definition | Example |
|------|-----------|---------|
| **Independent Variable (IV)** | The variable you manipulate | Caffeine (present vs. absent) |
| **Dependent Variable (DV)** | The variable you measure | Reaction time (milliseconds) |
| **Control Group** | Does not receive the manipulation | Decaf coffee group |
| **Experimental Group** | Receives the manipulation | Caffeine group |
| **Random Assignment** | Participants randomly placed in groups | Coin flip or random number generator |
| **Confounding Variable** | An uncontrolled variable that could explain results | Sleep quality, caffeine tolerance |
| **Demand Characteristics** | Cues that tell participants what you expect | Hypothesis guessing |
| **Placebo Effect** | Improvement due to expectation, not treatment | Feeling alert after drinking what you believe is caffeinated coffee |

---

## 19.3 Experimental Designs

### 19.3.1 Between-Subjects Design

Each participant experiences only one condition. Different people are in the experimental and control groups.

**Advantages:** No carryover effects, simpler to analyze
**Disadvantages:** Requires more participants, individual differences may exist between groups

> *Example:* 100 participants are randomly assigned to either a mindfulness group (receives 8 weeks of mindfulness training) or a waitlist control group (no training). Anxiety is measured at baseline and post-intervention.

### 19.3.2 Within-Subjects Design

Each participant experiences all conditions. The same people are tested under both experimental and control conditions.

**Advantages:** Fewer participants needed, controls for individual differences
**Disadvantages:** Carryover effects, order effects, fatigue

> *Example:* 50 participants complete a reaction time task both with and without caffeine (on different days, counterbalanced). Each participant serves as their own control.

### 19.3.3 Mixed Design

Combines between-subjects and within-subjects factors.

> *Example:* Participants are divided into two groups (mindfulness vs. control — between-subjects) and their anxiety is measured at three time points (pre, post, follow-up — within-subjects).

---

## 19.4 Controlling Confounds

### Random Assignment
Ensures groups are equivalent before the manipulation. Use random number generators, not convenience assignment.

### Blinding
- **Single-blind:** Participants do not know which condition they are in
- **Double-blind:** Neither participants nor experimenters know which condition (essential for drug studies)

### Standardization
All participants experience the same procedures, instructions, and environment — except for the manipulation.

### Counterbalancing
In within-subjects designs, vary the order of conditions to control for order effects.

> **Pro Tip:** Even in psychology experiments, double-blinding is possible. If testing a new therapy, have a different therapist deliver the control condition, and have outcome assessors who do not know which group participants were in.

---

## 19.5 Worked Example: CBT App for Anxiety

**Research question:** Does a CBT-based mobile app reduce anxiety symptoms compared to a waitlist control?

**Design:** Randomized controlled trial (RCT), between-subjects

**Participants:** 120 adults with GAD, recruited from university counseling centers

**Procedure:**
1. Baseline: All participants complete GAD-7, PHQ-9, and Worry Scale
2. Random assignment: 60 to CBT app group, 60 to waitlist
3. Intervention: CBT app group uses the app for 8 weeks (daily exercises, weekly modules)
4. Post-intervention: All participants complete the same measures
5. Follow-up: 3 months post-intervention

**Measures:**
- GAD-7 (primary outcome)
- PHQ-9 (secondary outcome)
- Worry Scale (secondary outcome)
- App usage logs (adherence)

**Analysis:**
- Independent t-tests comparing post-intervention scores
- Repeated-measures ANOVA (group × time)
- Effect sizes (Cohen's d)
- Intention-to-treat analysis

**Hypothetical results:**
> The CBT app group (M = 7.2, SD = 3.8) showed significantly lower GAD-7 scores than the waitlist group (M = 12.1, SD = 4.2) at post-intervention, t(118) = 6.87, p < .001, d = 1.23. The group × time interaction was significant, F(1, 118) = 47.32, p < .001, η² = .29. Effects were maintained at 3-month follow-up.

---

## 19.6 Reporting Experimental Studies

Follow the **CONSORT guidelines** for reporting RCTs:

1. **Title** — Identify as a randomized trial
2. **Abstract** — Structured (background, methods, results, conclusion)
3. **Introduction** — Scientific background and rationale
4. **Methods** — Trial design, participants, interventions, outcomes, sample size, randomization, blinding
5. **Results** — Participant flow (CONSORT diagram), baseline data, outcomes, harms
6. **Discussion** — Interpretation, limitations, generalizability

### CONSORT Flow Diagram

```
Assessed for eligibility (n = 200)
    ↓
Excluded (n = 80)
  - Not meeting criteria (n = 45)
  - Declined to participate (n = 25)
  - Other reasons (n = 10)
    ↓
Randomized (n = 120)
    ↓
┌─────────────────┬─────────────────┐
│ CBT App (n = 60)│ Waitlist (n = 60)│
│ Received (n = 58)│ Received (n = 60)│
│ Lost (n = 2)    │ Lost (n = 0)    │
│ Analyzed (n = 58)│ Analyzed (n = 60)│
└─────────────────┴─────────────────┘
```

---

## 19.7 Common Pitfalls

1. **No random assignment** — Without it, you cannot establish causality
2. **Small sample sizes** — Use power analysis to determine required n
3. **Demand characteristics** — Participants guess your hypothesis and behave accordingly
4. **Attrition** — Participants drop out, creating bias (use intention-to-treat analysis)
5. **Experimenter effects** — Your expectations influence participant behavior (use blinding)
6. **Ecological validity** — Lab results may not generalize to real-world settings

> **Pro Tip:** Always conduct a power analysis before collecting data. G*Power (free software) can calculate the sample size you need based on your expected effect size, desired power (typically .80), and alpha level (.05).

---

## Key Takeaways

- **Experiments** establish causality through manipulation, control, and random assignment.
- **Between-subjects** designs use different groups; **within-subjects** designs use the same participants in all conditions.
- Control confounds through **randomization, blinding, standardization, and counterbalancing**.
- **RCTs** are the gold standard for testing interventions — follow CONSORT guidelines for reporting.
- Always conduct a **power analysis** before data collection to determine adequate sample size.
- **Report participant flow** (CONSORT diagram) and use **intention-to-treat analysis** to handle attrition.

---

## Practice Questions

1. Design an experiment to test whether background music affects reading comprehension. Specify your IV, DV, control condition, and how you would control for confounds.
2. Explain the difference between a between-subjects and a within-subjects design. When would you choose one over the other?
3. What is the purpose of random assignment? What happens if you do not use it?
4. You are testing a new therapy for depression. Explain how you would implement double-blinding.
5. Draw a CONSORT flow diagram for a study with 200 potential participants, where 30 are excluded, 170 are randomized, and 15 drop out during the study.

---

*In the next chapter, we will explore longitudinal studies — research designs that track the same participants over time to observe change and development.*

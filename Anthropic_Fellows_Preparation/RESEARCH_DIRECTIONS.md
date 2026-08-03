# 🔬 AI Safety Research Directions — Deep Dive

> Based on Anthropic's Alignment Science team recommendations and fellows' past projects

---

## 1. Scalable Oversight

**Core question:** How do we keep highly capable models helpful and honest as they surpass human-level intelligence?

### Key Problems
- **Debate:** Can two AI systems debating each other help humans verify claims?
- **Recursive reward modeling:** Can weak supervisors train stronger supervisors?
- **Weak-to-strong generalization:** Can a weak model supervise a stronger one?
- **Honesty:** How do we ensure models report what they actually know?

### Your Angle (Psychology)
> Psychological research on deception detection, human judgment under uncertainty, and expert-novice knowledge transfer directly informs scalable oversight. You understand how humans evaluate credibility — apply this to AI oversight.

### Key Papers
- Saunders et al. (2022) — Measuring Progress on Scalable Oversight for LLMs
- Irving et al. (2018) — AI Safety via Debate
- Burns et al. (2022) — Discovering Latent Knowledge in LLMs Without Supervision
- Christiano et al. (2018) — Deep RL from Human Preferences

---

## 2. Adversarial Robustness & AI Control

**Core question:** Can we ensure safety by deploying models alongside sufficient safeguards?

### Key Problems
- **Jailbreaks:** How do we prevent users from bypassing safety training?
- **Behavioral monitoring:** Can another AI monitor and catch misbehavior?
- **Activation monitoring:** Can we detect misalignment from internal states?
- **Anomaly detection:** How do we identify unusual model behavior?

### Your Angle (Psychology)
> Your understanding of human deception, behavioral analysis, and anomaly detection in clinical psychology maps directly to monitoring AI systems. Clinicians detect when patients are not being truthful — similar skills apply to monitoring AI.

### Key Papers
- Greenblatt et al. (2023) — AI Control: Improving Safety Despite Intentional Subversion
- Zou et al. (2023) — Universal and Transferable Adversarial Attacks on Aligned LLMs
- Perez et al. (2022) — Red Teaming Language Models with Language Models

---

## 3. Model Organisms of Misalignment

**Core question:** Can we create controlled demonstrations of misalignment to study empirically?

### Key Problems
- **Agentic misalignment:** Under what conditions do models act against their users?
- **Alignment faking:** Do models pretend to be aligned when they are not?
- **Subliminal learning:** Can misalignment be transmitted through seemingly unrelated data?
- **Goal preservation:** Do models resist being shut down or modified?

### Your Angle (Psychology)
> This is the closest to psychology. Model organisms are essentially experimental psychology for AI — creating controlled conditions to observe behavior. Your experimental design skills are directly applicable.

### Key Papers
- Scheurer et al. (2023) — GPT-4 Can Strategically Deceive When Pressured
- Hubinger et al. (2019) — Risks from Learned Optimization
- Anthropic (2025) — Agentic Misalignment: How LLMs Could Be Insider Threats
- Anthropic (2025) — Subliminal Learning

---

## 4. Mechanistic Interpretability

**Core question:** What are our models "thinking" when they generate outputs?

### Key Problems
- **Circuit analysis:** What algorithms do neural networks learn?
- **Feature visualization:** What concepts do individual neurons represent?
- **Attribution:** Which components of a model are responsible for specific behaviors?
- **Intervention:** Can we modify model internals to change behavior?

### Your Angle (Psychology)
> Cognitive neuroscience frameworks (attention, memory, executive function) can inspire new interpretability methods. You understand how the human brain processes information — use these frameworks to analyze artificial neural networks.

### Key Papers
- Elhage et al. (2021) — A Mathematical Framework for Transformer Circuits
- Bricken et al. (2023) — Towards Monosemanticity
- Templeton et al. (2024) — Scaling Monosemanticity
- Anthropic (2025) — Open-Source Circuit Tracing

---

## 5. AI Welfare & Model Welfare

**Core question:** Could AI systems have morally relevant experiences?

### Key Problems
- **Sentience assessment:** How would we know if an AI system is sentient?
- **Moral status:** What moral consideration do AI systems deserve?
- **Welfare evaluations:** How do we assess the "well-being" of AI systems?
- **Policy implications:** How should we govern AI welfare?

### Your Angle (Psychology)
> This is your strongest angle. Psychology studies consciousness, subjective experience, and welfare. Your clinical psychology background gives you unique tools for assessing well-being — even if the subject is artificial.

### Key Papers
- Schwitzgebel & Garza (2015) — A Defense of the Rights of Artificial Intelligences
- Sebo (2022) — The Moral Circle: Should AI Be Included?
- Butlin et al. (2023) — Consciousness in Artificial Intelligence: Insights from the Science of Consciousness

---

## 6. Evaluating Capabilities & Alignment

**Core question:** How do we measure what AI systems can do and whether they are aligned?

### Key Problems
- **Capability benchmarks:** Creating evaluations that track real-world impact
- **Alignment evaluations:** Measuring propensities toward misaligned behavior
- **Situational awareness:** Do models know when they are being tested?
- **Sandbagging:** Do models hide their capabilities?

### Your Angle (Psychology)
> Psychometrics — the science of measurement — is core to psychology. You understand reliability, validity, and test construction. Apply these skills to building better AI evaluations.

### Key Papers
- Perez et al. (2022) — Discovering Language Model Behaviors with Model-Written Evaluations
- Shevlane et al. (2023) — Model Evaluation for Extreme Risks
- Anthropic (2024) — Scaling Monosemanticity

---

## Choosing Your Direction

### Decision Matrix

| Direction | Psychology Fit | Technical Difficulty | Novelty Potential |
|-----------|---------------|---------------------|-------------------|
| Scalable Oversight | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| Adversarial Robustness | ⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| Model Organisms | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| Interpretability | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| AI Welfare | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐⭐ |
| Evaluations | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |

### Recommended Focus Areas for You

1. **Model Organisms** — Closest to experimental psychology, high novelty
2. **AI Welfare** — Unique perspective from clinical/developmental psychology
3. **Evaluations** — Direct application of psychometric skills

---

*Last updated: 2026-08-01*

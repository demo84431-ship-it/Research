# Chapter 25: Natural Language Processing and Sentiment Analysis in Psychology

## The Words We Use Reveal Who We Are

Language is the primary medium through which humans express thought, emotion, and experience. For decades, psychologists have studied language — through content analysis of interviews, linguistic inquiry of narratives, and close reading of therapy transcripts. The challenge has always been scale: a human coder can analyze perhaps ten transcripts in a week. What happens when you have ten thousand?

Natural Language Processing (NLP) is the branch of artificial intelligence that gives computers the ability to understand, interpret, and generate human language. For psychologists, NLP is not just a tool — it is a new way of listening.

This chapter introduces you to NLP and its applications in psychology, from sentiment analysis of social media to topic modeling of therapy sessions. By the end, you will have the conceptual foundation and practical tools to incorporate NLP into your own research.

## What Is NLP and Why Does It Matter for Psychology?

NLP sits at the intersection of computer science, linguistics, and artificial intelligence. It encompasses a wide range of tasks:

- **Text classification:** Assigning categories to text (e.g., "this tweet expresses suicidal ideation")
- **Sentiment analysis:** Determining the emotional tone of text (positive, negative, neutral)
- **Topic modeling:** Discovering hidden thematic structures in large collections of text
- **Named entity recognition:** Identifying people, places, organizations in text
- **Machine translation:** Converting text between languages
- **Text generation:** Creating new text based on learned patterns

For psychology, the applications are immediately apparent:

1. **Scale:** Analyze thousands of therapy transcripts, social media posts, or interview responses
2. **Objectivity:** Reduce subjective bias in content analysis
3. **Longitudinal tracking:** Monitor language changes over time as indicators of psychological change
4. **Access:** Analyze publicly available text data (with ethical approval) to study mental health at population level

### The Linguistic Psychology Connection

James Pennebaker's groundbreaking research established that the way people use function words — pronouns, prepositions, articles — reveals deep psychological processes. People who are depressed use more first-person singular pronouns ("I," "me"). People who are anxious use more tentative language ("maybe," "perhaps," "might"). NLP allows us to test these hypotheses at unprecedented scale.

The Linguistic Inquiry and Word Count (LIWC) software, developed by Pennebaker and colleagues, was one of the first tools to bridge psychology and computational text analysis. Modern NLP extends this approach dramatically.

## Core NLP Techniques for Psychologists

### 1. Sentiment Analysis

Sentiment analysis determines whether a piece of text expresses positive, negative, or neutral emotion. More advanced versions detect specific emotions (anger, joy, sadness, fear, surprise, disgust).

**How it works (simplified):**

1. **Lexicon-based approach:** Each word is assigned a sentiment score. The overall sentiment is the sum of individual word scores.
2. **Machine learning approach:** A model is trained on labeled examples (text with known sentiment) and learns to predict sentiment for new text.

```python
# Lexicon-based sentiment analysis with TextBlob
from textblob import TextBlob

text = "I feel hopeless and exhausted. Nothing seems to matter anymore."
blob = TextBlob(text)

print(f"Polarity: {blob.sentiment.polarity}")      # -1 (negative) to +1 (positive)
print(f"Subjectivity: {blob.sentiment.subjectivity}") # 0 (objective) to 1 (subjective)

# Output:
# Polarity: -0.4
# Subjectivity: 0.75
```

```python
# Machine learning-based sentiment with transformers
from transformers import pipeline

classifier = pipeline("sentiment-analysis")
result = classifier("I've been feeling really anxious about everything lately.")
print(result)
# [{'label': 'NEGATIVE', 'score': 0.97}]
```

**Psychological applications:**

- Tracking mood through social media posts over time
- Analyzing emotional tone in therapy transcripts
- Monitoring sentiment shifts during crisis periods
- Evaluating patient journal entries in digital therapeutics

### 2. Topic Modeling

Topic modeling discovers abstract "topics" that occur in a collection of documents. The most common algorithm is **Latent Dirichlet Allocation (LDA)**.

**Intuition:** Imagine you have 500 therapy transcripts. LDA assumes each transcript is a mixture of topics (e.g., "family conflict," "work stress," "medication concerns"), and each topic is a mixture of words. The algorithm works backward from the words to discover the hidden topics.

```python
# Topic modeling with Gensim
import gensim
from gensim import corpora
from gensim.models import LdaModel

# Preprocessing: tokenization, stopword removal
texts = [
    ['feel', 'anxious', 'work', 'deadlines', 'pressure'],
    ['sleep', 'insomnia', 'tired', 'exhausted', 'night'],
    ['family', 'argument', 'mother', 'angry', 'relationship'],
    # ... hundreds more documents
]

# Create dictionary and corpus
dictionary = corpora.Dictionary(texts)
corpus = [dictionary.doc2bow(text) for text in texts]

# Train LDA model
lda_model = LdaModel(corpus, num_topics=5, id2word=dictionary, passes=15)

# Print discovered topics
for idx, topic in lda_model.print_topics():
    print(f"Topic {idx}: {topic}")
    
# Example output:
# Topic 0: 0.15*"sleep" + 0.12*"insomnia" + 0.10*"tired" + 0.08*"night" + 0.07*"exhausted"
# Topic 1: 0.14*"anxious" + 0.11*"work" + 0.09*"stress" + 0.08*"deadline" + 0.07*"pressure"
```

**Psychological applications:**

- Identifying common themes in therapy sessions
- Discovering topics in online mental health communities
- Analyzing qualitative interview data at scale
- Tracking topic prevalence changes over time or after interventions

### 3. Text Classification

Text classification assigns predefined categories to text. In psychology, this is used for:

- **Crisis detection:** Classifying social media posts as expressing suicidal ideation or not
- **Diagnosis support:** Classifying clinical notes by diagnostic category
- **Emotion detection:** Categorizing text by expressed emotion
- **Stance detection:** Identifying attitudes toward mental health treatment

```python
# Text classification with scikit-learn
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.naive_bayes import MultinomialNB
from sklearn.pipeline import Pipeline
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report

# Sample data: social media posts labeled for crisis
texts = [
    "I can't take this anymore, I want to disappear",
    "Had a great day at the park with friends!",
    "Nobody would care if I was gone",
    "Feeling blessed after my promotion",
    # ... hundreds more
]
labels = [1, 0, 1, 0]  # 1 = crisis, 0 = no crisis

X_train, X_test, y_train, y_test = train_test_split(texts, labels, test_size=0.2)

# Build pipeline
pipeline = Pipeline([
    ('tfidf', TfidfVectorizer(max_features=5000, ngram_range=(1, 2))),
    ('classifier', MultinomialNB())
])

pipeline.fit(X_train, y_train)
predictions = pipeline.predict(X_test)
print(classification_report(y_test, predictions))
```

### 4. Word Embeddings and Semantic Representation

Word embeddings represent words as numerical vectors in a high-dimensional space. Words with similar meanings cluster together. This allows quantitative analysis of semantic relationships.

**Key concept:** In embedding space, the vector relationship "king - man + woman ≈ queen" captures gender relationships. Similarly, psychological concepts can be analyzed through their embedding relationships.

```python
# Using pre-trained word embeddings
from gensim.models import KeyedVectors

# Load pre-trained Word2Vec (Google News, 300 dimensions)
model = KeyedVectors.load_word2vec_format('GoogleNews-vectors-negative300.bin', binary=True)

# Find words similar to "depression"
similar = model.most_similar("depression", topn=10)
print("Words similar to 'depression':")
for word, score in similar:
    print(f"  {word}: {score:.3f}")

# Analyze semantic distance between concepts
distance = model.distance("anxiety", "happiness")
print(f"\nSemantic distance between 'anxiety' and 'happiness': {distance:.3f}")
```

**Psychological applications:**

- Measuring semantic similarity between psychological constructs
- Analyzing how mental health language changes across communities
- Detecting shifts in public discourse about mental health
- Building culturally adapted assessment tools

## Applications in Psychology Research

### Social Media Analysis for Mental Health

This is one of the most active areas of NLP×Psychology research. Key studies include:

- **De Choudhury et al. (2013):** Analyzed Twitter data to predict depression, using linguistic features like increased use of negative emotion words and first-person pronouns.

- **Coppersmith et al. (2018):** Used NLP to analyze social media posts for suicide risk, demonstrating that language patterns differentiate individuals with and without suicidal ideation.

- **Preotiuc-Pietro et al. (2015):** Used NLP to predict personality traits from social media, showing that linguistic features correlate with Big Five personality dimensions.

### Therapy Transcript Analysis

NLP opens new possibilities for understanding the therapeutic process:

- **Alliance measurement:** NLP models can analyze therapist-client language patterns to predict therapeutic alliance quality (Xiao et al., 2015).

- **Change detection:** Tracking linguistic markers across therapy sessions can identify when therapeutic change is occurring — even before the client self-reports improvement.

- **Therapist competence:** NLP can evaluate adherence to treatment protocols by analyzing whether therapists use appropriate techniques.

- **Meta-communication:** Analyzing how clients talk about the therapeutic relationship itself can reveal important process dynamics.

### Crisis Detection

Real-time NLP systems can monitor social media for crisis signals:

- The **Trevor Project** uses NLP to prioritize crisis contacts
- **Facebook/Meta** implemented AI systems to flag posts expressing suicidal ideation
- **Crisis Text Line** uses text analysis to triage incoming messages

### Cross-Cultural NLP

An emerging and critical area:

- How does mental health language differ across cultures?
- Can NLP models trained on English-language data be adapted for Hindi, Tamil, or Bengali?
- How do cultural metaphors for distress manifest in text analysis?

> **Pro Tip:** If you work with multilingual data, be aware that most NLP tools and models are trained predominantly on English. Applying them directly to other languages without adaptation can produce misleading results. Always validate your NLP pipeline on your specific language and population.

## Tools for NLP in Psychology Research

### Python Ecosystem

**NLTK (Natural Language Toolkit)**
```python
import nltk
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer

# Tokenize
text = "The patient reported feeling anxious and overwhelmed."
tokens = word_tokenize(text.lower())

# Remove stopwords
stop_words = set(stopwords.words('english'))
filtered = [w for w in tokens if w not in stop_words and w.isalpha()]

# Lemmatize
lemmatizer = WordNetLemmatizer()
lemmatized = [lemmatizer.lemmatize(w) for w in filtered]
print(lemmatized)
# ['patient', 'reported', 'feeling', 'anxious', 'overwhelmed']
```

**spaCy**
```python
import spacy

nlp = spacy.load("en_core_web_sm")
doc = nlp("The patient reported feeling anxious and overwhelmed at work.")

# Part-of-speech tagging
for token in doc:
    print(f"{token.text:15} {token.pos_:10} {token.dep_:10}")

# Named entity recognition
for ent in doc.ents:
    print(f"{ent.text:20} {ent.label_}")
```

**Hugging Face Transformers**
```python
from transformers import pipeline

# Sentiment analysis
sentiment = pipeline("sentiment-analysis")
print(sentiment("I feel hopeful about my recovery."))

# Text generation (useful for data augmentation)
generator = pipeline("text-generation", model="gpt2")
print(generator("The patient described their anxiety as", max_length=50))

# Zero-shot classification (classify without training data)
classifier = pipeline("zero-shot-classification")
result = classifier(
    "I've been having trouble sleeping and can't concentrate at work",
    candidate_labels=["depression", "anxiety", "sleep disorder", "stress"]
)
print(result['labels'][0])  # Most likely category
```

### R Ecosystem

```r
library(tidytext)
library(dplyr)
library(ggplot2)

# Tidytext approach to sentiment analysis
text_df <- data.frame(
  text = c("I feel hopeless", "Today was a good day", "I can't stop worrying"),
  session = 1:3
)

# Tokenize and analyze sentiment
sentiment_analysis <- text_df %>%
  unnest_tokens(word, text) %>%
  inner_join(get_sentiments("bing")) %>%
  count(session, sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(net_sentiment = positive - negative)

print(sentiment_analysis)
```

### Specialized Psychology NLP Tools

- **LIWC (Linguistic Inquiry and Word Count):** The gold standard for psychology text analysis. Proprietary but widely used.
- **VADER:** Optimized for social media sentiment analysis.
- **Empath:** Topic-based text analysis with customizable categories.
- **IBM Watson Tone Analyzer:** Commercial tool for emotion detection in text.

## How to Incorporate NLP in Your Psychology Research

### Step-by-Step Approach

1. **Start with a psychological question.** Not "how can I use NLP?" but "what psychological phenomenon can text data illuminate?"

2. **Identify your data source.** Social media posts? Therapy transcripts? Patient journals? Survey open-ends?

3. **Choose your NLP technique.** Match the technique to your question:
   - Emotional tone → Sentiment analysis
   - Themes and topics → Topic modeling
   - Classification of text → Text classification
   - Semantic relationships → Word embeddings

4. **Preprocess carefully.** Text preprocessing significantly impacts results. Consider:
   - Tokenization and lowercasing
   - Stopword removal (but be careful — some "stopwords" carry psychological meaning)
   - Lemmatization vs. stemming
   - Handling emojis and emoticons (important in social media data)

5. **Validate your approach.** Compare NLP results with human coding on a subset of data. Report inter-rater reliability.

6. **Interpret psychologically.** Do not just report statistical results. Explain what the linguistic patterns mean for our understanding of the psychological phenomenon.

### Combining NLP with Traditional Methods

The most impactful research often combines NLP with traditional psychological methods:

- **NLP + Surveys:** Use NLP to analyze open-ended survey responses alongside quantitative measures
- **NLP + Clinical data:** Combine text analysis with clinical assessments for richer understanding
- **NLP + Qualitative methods:** Use NLP to identify patterns, then conduct deep qualitative analysis of representative examples
- **NLP + Longitudinal design:** Track linguistic changes over time in relation to psychological change

## Worked Example: Analyzing Reddit Mental Health Posts

Let us walk through a complete NLP analysis of mental health-related Reddit data.

### Research Question
"What themes emerge in posts on Indian mental health subreddits, and how do they compare to global mental health communities?"

### Data Collection (Conceptual)
```python
import praw  # Reddit API wrapper

reddit = praw.Reddit(client_id='YOUR_CLIENT_ID',
                     client_secret='YOUR_CLIENT_SECRET',
                     user_agent='mental_health_research')

# Collect posts from Indian mental health subreddit
subreddit = reddit.subreddit('IndianMentalHealth')
posts = []
for post in subreddit.new(limit=1000):
    posts.append({
        'title': post.title,
        'text': post.selftext,
        'score': post.score,
        'created': post.created_utc
    })
```

### Preprocessing
```python
import re

def preprocess_text(text):
    # Remove URLs
    text = re.sub(r'http\S+', '', text)
    # Remove special characters but keep meaningful punctuation
    text = re.sub(r'[^a-zA-Z\s]', '', text)
    # Lowercase
    text = text.lower().strip()
    return text

# Apply preprocessing
for post in posts:
    post['clean_text'] = preprocess_text(post['text'])
```

### Sentiment Analysis
```python
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer

analyzer = SentimentIntensityAnalyzer()

for post in posts:
    scores = analyzer.polarity_scores(post['clean_text'])
    post['sentiment'] = scores['compound']  # -1 to +1

# Analyze sentiment distribution
import numpy as np
sentiments = [p['sentiment'] for p in posts]
print(f"Mean sentiment: {np.mean(sentiments):.3f}")
print(f"Std deviation: {np.std(sentiments):.3f}")
print(f"Posts with negative sentiment: {sum(1 for s in sentiments if s < -0.05) / len(sentiments) * 100:.1f}%")
```

### Topic Modeling
```python
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.decomposition import LatentDirichletAllocation

# Vectorize text
vectorizer = CountVectorizer(max_df=0.95, min_df=2, max_features=1000,
                             stop_words='english')
doc_term_matrix = vectorizer.fit_transform([p['clean_text'] for p in posts])

# Fit LDA model
lda = LatentDirichletAllocation(n_components=8, random_state=42, max_iter=20)
lda.fit(doc_term_matrix)

# Display topics
feature_names = vectorizer.get_feature_names_out()
for topic_idx, topic in enumerate(lda.components_):
    top_words = [feature_names[i] for i in topic.argsort()[:-11:-1]]
    print(f"Topic {topic_idx}: {', '.join(top_words)}")
```

### Visualization
```python
import matplotlib.pyplot as plt

# Sentiment over time
import pandas as pd
df = pd.DataFrame(posts)
df['date'] = pd.to_datetime(df['created'], unit='s')
df.set_index('date', inplace=True)

weekly_sentiment = df['sentiment'].resample('W').mean()
weekly_sentiment.plot(figsize=(12, 6), title='Average Sentiment Over Time')
plt.ylabel('Sentiment Score')
plt.axhline(y=0, color='r', linestyle='--', alpha=0.5)
plt.tight_layout()
plt.savefig('sentiment_timeline.png')
```

### Interpretation

When you analyze the results, think psychologically:

- What do the topics tell us about the specific concerns of Indian mental health communities?
- How do cultural factors (family expectations, academic pressure, stigma) manifest in the language?
- What do sentiment patterns reveal about community dynamics?
- How do these findings compare to global mental health communities?

> **Future Direction:** Multilingual NLP is advancing rapidly. Soon you will be able to analyze mental health discourse in Hindi, Tamil, Bengali, and other Indian languages directly, without translation. This will unlock an enormous amount of currently inaccessible data for understanding mental health in India's diverse linguistic landscape.

## Ethical Considerations in NLP Research

### Privacy
Even public social media data deserves careful ethical treatment. Users may not expect their posts to be analyzed for mental health research. Always:
- Obtain IRB/ethics committee approval
- De-identify data thoroughly
- Consider whether users would reasonably expect this use of their data
- Follow platform terms of service

### Consent
The question of consent for public social media data is complex. Best practices include:
- Not quoting identifiable posts without permission
- Aggregating results rather than reporting individual cases
- Being transparent in publications about data sources

### Potential Harm
NLP systems that detect mental health signals can be used for good (connecting people with resources) or harm (discrimination, surveillance). Always consider the downstream implications of your research.

## Chapter Summary

- NLP provides powerful tools for analyzing the language of psychological experience at scale.
- Key techniques include sentiment analysis, topic modeling, text classification, and word embeddings.
- Python (NLTK, spaCy, transformers) and R (tidytext) provide accessible NLP tools.
- The most impactful research combines NLP with traditional psychological methods and interprets results through a psychological lens.
- Ethical considerations — privacy, consent, potential harm — must guide all NLP research.

In the next chapter, we will explore how AI is being used not just to study mental health, but to actively treat it — through chatbots, digital therapeutics, and AI-powered interventions.

---

*Key Takeaway: NLP lets you listen to thousands of voices simultaneously. But the power of NLP in psychology comes not from the technology itself, but from the psychological insight you bring to interpreting what the words mean.*

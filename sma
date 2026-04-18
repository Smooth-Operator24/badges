 import pandas as pd

data = {
    "tweet": [
        "ChatGPT is amazing for students",
        "AI tools will replace jobs",
        "Gemini is improving fast",
        "AI makes work easier",
        "Concern about AI job loss"
    ],
    "likes": [120, 80, 100, 150, 60],
    "retweets": [30, 20, 25, 40, 15],
    "location": ["Pune", "Delhi", "Mumbai", "Bangalore", "Chennai"]
}

df = pd.DataFrame(data)
df
 from textblob import TextBlob

df['sentiment'] = df['tweet'].apply(lambda x: TextBlob(x).sentiment.polarity)

def label(score):
    if score > 0:
        return "Positive"
    elif score == 0:
        return "Neutral"
    else:
        return "Negative"

df['sentiment_label'] = df['sentiment'].apply(label)

df
 !pip install textblob
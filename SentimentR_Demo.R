# install packages
install.packages("sentimentr")
library(sentimentr)

# check sentiment of a sentence
sentiment("I am excited")
sentiment("I am not loving that it's cold and there's no snow")
sentiment("Try something")

# multiple sentences
text <- c('I am very excited. This is my first R application with sentiment analysis.')
sentiment(text)

# use sentiment_by() to compute polarity of entire text
sentiment_by(text)

# emotions
emotion(text)

# average for whole text
emotion_by(text)

# extract individual word polarity
words <- extract_sentiment_terms(text)
attributes(words)$count

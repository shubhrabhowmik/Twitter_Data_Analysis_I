# Social Media Mining

# Twitter is a great source for sentiment data and social media mining
# furthermore it is quite easy to get significant amounts of data
# to be able to scrape data from Twitter you need a standard Twitter account
# and you need to update it to a developer account
# note that Twitter limits the amount of searches you can perform (15min: 15 scrapes)

# package twitteR
install.packages("twitteR")
library("twitteR")

install.packages("httr")
library("httr")

# all this info is obtained for the Twitter developer account
consumer_key = "get it from Twitter devloper account > Keys and token"
consumer_secret = "get it from Twitter devloper account > Keys and token"
access_token = "get it from Twitter devloper account > Keys and token"
access_secret = "get it from Twitter devloper account > Keys and token"

# we are using the setup_twitter_oauth fuction
?setup_twitter_oauth
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

# Lets start with the Twitter scraping

library("twitteR")

# we need to specify the cainfo to avoid a SSL cert error - this is for Windows machines
# Lets check the latest tweets of Udemy
userTimeline("Udemy", cainfo="cacert.pem")

# searchTwitter is the main function of the package

?searchTwitter

# arguments: since and until are for time specifications
# lang: for languge specification
# geocode: for location specification

# we are now scraping 1k tweekts for Udemy, and we als specify our certificate
udemytweets <- searchTwitter('#Udemy', n = 1000)
udemylist <- sapply(udemytweets, function(x) x$getText())
udemycorpus <- Corpus(VectorSource(udemylist))

udemycorpus <- tm_map(udemycorpus, content_transformer(function(x) iconv(x, to='utf-8', sub='')))
udemycorpus <- tm_map(udemycorpus, tolower) # change the words to lower case
udemycorpus <- tm_map(udemycorpus, removePunctuation) # Remove the punctuation
udemycorpus <- tm_map(udemycorpus, function(x) removeWords(x, stopwords())) # Removing stop words

wordcloud(udemycorpus, min.freq = 5, scale = c(5, 1),
          max.word = 50, random.order = F)

# changing to a tdm
udemytdm <- TermDocumentMatrix(udemycorpus)

# a DocumentTermMatrix is a very useful tool when it comes to text mining
# it structures the text in a matrix where each term is organized in a column
# each row is a document and the number represents the counts of that term

udemytdm

# frequent terms
findFreqTerms(udemytdm, lowfreq=11)

?findFreqTerms

# associations
findAssocs(udemytdm, 'android', 0.60)

# Lets get a dendrogram to see related terms

# Remove sparse (infrequently used) terms from the term-document matrix
udemy2tdm <-removeSparseTerms(udemytdm, sparse=0.9)

# Lets scale the data
udemy2tdmscale <- scale(udemy2tdm)

# distance matrix
udemydist <- dist(udemy2tdmscale, method = "euclidean")

# hierarchical clustering
udemyfit <- hclust(udemydist)

# Visualize the result
plot(udemyfit)

# to calculate a certain number of groups
cutree(udemyfit, k=6)

# we can even color the 6 groups and plot them
rect.hclust(udemyfit, k=6, border="red")

#-----------------------------------END-----------------------------------------

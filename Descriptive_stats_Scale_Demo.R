# A/B Test data set
# MarketID: unique identifier for market
# MarketSize: size of market area by sales; 1 = small, 2 = medium, 3 = large
# LocationID: unique identifier for store location
# AgeOfStore: age of store in years
# Promotion: one of three promotions that were tested
# week: one of four weeks when the promotions were run
# SalesInThousands: sales amount for a specific LocationID, Promotion, and week

# install packages and load data
install.packages("modeest")
library(readxl)
test <- read_excel("~/Downloads/marketing_campaign.xlsx")
View(test)
summary(test)

# nominal data = mode
library(modeest)
mlv(test$MarketID, method = "mfv")

# ordinal data = mode or median
mlv(test$MarketSize, method = "mfv") # mode
median(test$MarketSize) # median

# ratio = mode, median, mean
mlv(test$AgeOfStore, method = "mfv")
median(test$AgeOfStore)
mean(test$AgeOfStore)
range(test$AgeOfStore)
# lack of consistency tells me that we have a skewed data set
hist(test$AgeOfStore)
hist(test$AgeOfStore, 
     main = "Histogram of Store Age", # title
     ylab = "Count", # y-axis label
     xlab = "Age of Store in Years", # x-axis label
     ylim = c(0, 250), # y-axis range
     xlim = c(0, 30), # x-axis range
     col = "lightblue", # color
     breaks = seq(0, 30, 5), # num of bins/bars
     xaxp = c(0, 30, 5) # xtick range and how many groups
     )

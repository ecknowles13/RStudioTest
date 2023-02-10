install.packages("readxl")
library(readxl)
Restaurant <- read_excel("~/Downloads/Restaurant.xlsx")
View(Restaurant)  

# check variables
summary(Restaurant)
# convert Coast and Item to factors
Restaurant$Coast <- as.factor(Restaurant$Coast)
Restaurant$Item <- as.factor(Restaurant$Item)

# anova
one_way <- aov(Sales ~ Coast, data = Restaurant)
summary(one_way)

two_way <- aov(Sales ~ Coast*Item, data = Restaurant)
summary(two_way)

# post-hoc for differences
ph <- TukeyHSD(two_way)
ph

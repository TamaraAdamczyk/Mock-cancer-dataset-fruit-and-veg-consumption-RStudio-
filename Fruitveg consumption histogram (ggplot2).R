getwd() 

g <- read.csv(file = "C:/Users/tamci/OneDrive/Desktop/cancer-data-for-MOOC-1-_1_.csv", header = TRUE, sep = ',')

#Creating a new variable called fruitveg to combine consumption of fruit and veg
g$fruitveg <- g$fruit + g$veg
summary(g$fruitveg)

# Dichotomising patients into those who do or do not eat at least 5 portions of fruit and veg a day (1 or 0 in a binary variable). Using the ifelse() function.
g$five_a_day <- ifelse(g$fruitveg >= 5, 1, 0)
library(ggplot2)
ggplot() + geom_histogram(data = g, aes(x = fruitveg))

## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10)
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10, fill = "darkgreen")
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10, fill = "darkgreen", col = "black")
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10, fill = "darkgreen", col = "black") + labs(x = "Portions of fruit and vegetables", y = "Frequency")
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10, fill = "darkgreen", col = "black") + labs(x = "Portions of fruit and vegetables", y = "Frequency") + scale_x_continuous(breaks = seq(from = 0, to = 12, by = 1))
ggplot() + geom_histogram(data = g, aes(x = fruitveg), bins = 10, fill = "darkgreen", col = "black") + labs(x = "Portions of fruit and vegetables", y = "Frequency") + scale_x_continuous(breaks = seq(from = 0, to = 12, by = 1)) + theme_bw()

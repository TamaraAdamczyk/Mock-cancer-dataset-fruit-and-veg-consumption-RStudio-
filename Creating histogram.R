getwd() 

g <- read.csv(file = "C:/Users/tamci/OneDrive/Desktop/cancer-data-for-MOOC-1-_1_.csv", header = TRUE, sep = ',')

#Creating a new variable called fruitveg to combine consumption of fruit and veg
g$fruitveg <- g$fruit + g$veg
summary(g$fruitveg)

# Dichotomising patients into those who do or do not eat at least 5 portions of fruit and veg a day (1 or 0 in a binary variable). Using the ifelse() function.
g$five_a_day <- ifelse(g$fruitveg >= 5, 1, 0)
table(g$five_a_day)
hist(g$fruitveg)
hist(g$fruitveg, xlab = "Portions of fruit and vegetables",
     
     main = "Daily consumption of fruit and vegetables combined", axes = F)

axis(side = 1, at = seq(0, 11, 1))

axis(side = 2, at = seq(0, 16, 2))
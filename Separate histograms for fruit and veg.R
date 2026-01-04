getwd() 

g <- read.csv(file = "C:/Users/tamci/OneDrive/Desktop/cancer-data-for-MOOC-1-_1_.csv", header = TRUE, sep = ',')
#Dichtomising BMI with ifelse statement (a healthy BMI is between 18.5 and 25)
g$healthy_BMI <- ifelse(g$bmi > 18.5 & g$bmi < 25, 1, 0)
table(g$healthy_BMI)
#Fruit only hist
hist(g$fruit, xlab = "Portions of fruit", main = "Daily consumption of fruit", axes = F)
axis(side = 1, at = seq(0, 4, 1))
axis(side = 2, at = seq(0, 24, 4))
#Veg only hist
hist(g$veg, xlab = "Portions of vegetables", main = "Daily consumption of vegetables", axes = F)
axis(side = 1, at = seq(0, 9, 1))
axis(side = 2, at = seq(0, 18, 2))

library(ggplot2)
ggplot() + geom_histogram(data = g, aes(x = fruit), bins = 5, fill = "darkgreen", col = "black") +
  
  theme_bw() + labs(x = "Portions of fruit", y = "Frequency") +
  
  scale_x_continuous(breaks = seq(from = 0, to = 4, by = 1))

ggplot() + geom_histogram(data = g, aes(x = veg), bins = 10, fill = "darkgreen", col = "black") + 
  theme_bw() + labs(x = "Portions of vegetables", y = "Frequency") + 
  scale_x_continuous(breaks = seq(from = 0, to = 9, by = 1))
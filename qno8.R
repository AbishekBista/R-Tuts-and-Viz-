library(dslabs)
data(olive)
head(olive)

levels(olive$region)
boxplot(olive$palmitic~olive$region)
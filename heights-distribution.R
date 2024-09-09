# load the dataset
library(dslabs)
data(heights)
str(heights)

# make a table of category proportions
props <- prop.table(table(heights$sex))
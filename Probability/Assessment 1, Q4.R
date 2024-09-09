library(gtools)
library(tidyverse)
runners <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")

B <- 10000
chances <- replicate(B, {
  all(sample(runners, 3, replace=FALSE) == "Jamaica")
})

mean(chances)




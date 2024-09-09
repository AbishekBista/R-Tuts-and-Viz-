library(gtools)
library(tidyverse)

side_choice <- function(side_number) {
  entree <- length(combinations(6, 1))
  sides <- length(combinations(side_number, 2)) / 2
  drinks <- length(combinations(3, 1))
  
  entree * sides * drinks
}

p <- 2:12

Pr <- sapply(p, side_choice)
Pr

plot(p, Pr)

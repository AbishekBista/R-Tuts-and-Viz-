library(gtools)
library(tidyverse)

runners <- 3
medals <- 3

ways <- permutations(runners, medals)
ways
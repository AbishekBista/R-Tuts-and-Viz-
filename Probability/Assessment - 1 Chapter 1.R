library(gtools)
library(tidyverse)

runners <- 8
medals <- 3

ways <- permutations(runners, medals)
ways

length(ways) / medals
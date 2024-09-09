library(gtools)
library(tidyverse)

runners <- 8
medals <- 3

all_combinations <- permutations(runners, medals)
all_combinations

jamaica_combinations <- permutations(3, medals)
jamaica_combinations

length(jamaica_combinations)/length(all_combinations)
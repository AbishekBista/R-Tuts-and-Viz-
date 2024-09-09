library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)   # report 3 significant digits

str(stars)

dav <- stars %>% filter(type == "G")


stars %>% ggplot(aes(temp, magnitude, color=type))+
  geom_point ()


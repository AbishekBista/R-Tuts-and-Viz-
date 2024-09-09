library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

str(historic_co2)

co2_time <- historic_co2 %>%
  ggplot(aes(year, co2, color=source)) +
  geom_line() + xlim(-3000, 2018)

co2_time

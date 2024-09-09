library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

p<- temp_carbon %>% filter(!is.na(ocean_anomaly)) %>%
  ggplot(aes(year, temp_anomaly)) +
  geom_line(color='red') +
  geom_line(aes(year, ocean_anomaly), color='lightblue') +
  geom_line(aes(year, land_anomaly), color='brown')
p <- p + geom_hline(aes(yintercept = 0), col = "blue")
p <- p + ylab('Temperature anomaly (degrees C)') + ggtitle('Temperature anomaly relative to 20th century mean, 1880-2018') + geom_text(aes(x = 2000, y = 0.05, label = "20th century mean"), col = "blue")
p
  
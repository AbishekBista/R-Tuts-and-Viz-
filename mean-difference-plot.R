library(ggrepel)
new_data <- dat %>%
  mutate(year = paste0("life_expectancy_", year))

new_data

x_new_data <- new_data %>%
  select(country, year, life_expectancy)

x_new_data

y_new_data <- x_new_data %>% spread(year, life_expectancy)

y_new_data

z_new_data <- y_new_data %>%
  mutate(average = (life_expectancy_2015 + life_expectancy_2010)/2,
         difference = life_expectancy_2015 - life_expectancy_2010)



z_new_data %>%
  ggplot(aes(average, difference, label = country)) +
  geom_point() +
  geom_text_repel() +
  geom_abline(lty = 2) +
  xlab("Average of 2010 and 2015") +
  ylab("Difference between 2015 and 2010")

?spread


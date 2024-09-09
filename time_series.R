countries <- c('Germany', 'South Korea')


labels <- data.frame(country = countries, x = c(1962, 1990), y=c(75, 65))

filter(gapminder, country %in% countries) %>%
  ggplot(aes(year, life_expectancy, col=country)) +
  geom_line() +
  geom_label(data=labels, aes(x, y, label=country), size=3) +
  theme(legend.position="none")
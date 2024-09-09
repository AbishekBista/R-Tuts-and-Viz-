years <- c(1962, 1980, 1990, 2000, 2010)
continents <- c('Asia', 'Europe')


filter(gapminder, year %in% years & continent %in% continents) %>%
  ggplot(aes(fertility, life_expectancy, col=continent)) +
  geom_point() +
  facet_grid(.~year) +
  facet_wrap(~year)



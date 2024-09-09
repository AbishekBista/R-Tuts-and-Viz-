gapminder <- gapminder %>% mutate(dollars_per_day = gdp/population/365)

filter(gapminder, year == 1970 & !is.na(gdp)) %>%
  ggplot(aes(dollars_per_day)) +
  geom_histogram(binwidth = 1, color="black") +
  scale_x_continuous(trans = "log2")
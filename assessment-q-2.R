library(dslabs)
data(heights)
options(digits = 3)
min_height <- min(heights$height)
max_height <- max(heights$height)
max_height
min_height

x <- 50 : 82

sum(!x %in% heights$height)

!x %in% heights$height

heights2 <- mutate(heights, ht_cm = height * 2.54)
heights2$ht_cm[18]

mean_ht <- mean(heights2$ht_cm)
mean_ht

females <- heights2 %>% filter(sex=="Female")

s <- females %>% summarize(mean_ht =mean(ht_cm))
s
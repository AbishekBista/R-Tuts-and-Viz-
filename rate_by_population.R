data(murders)
library(dslabs)

murders <- mutate(murders, rate = total/population * 10^5)
murders

result <- function(x) {
  qn <- quantile(0, 0.5, 1)
  qn
}

result(murders$population)[3]

plot(murders$total, murders$population)
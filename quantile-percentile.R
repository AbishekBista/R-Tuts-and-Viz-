library(dslabs)
data(heights)

data <- heights$height

quantile(data, 0.40)

p <- seq(0.01, 0.99, 0.01)

percentiles <- quantile(data, p)

percentiles[names(percentiles) == "25%"]
percentiles[names(percentiles) == "75%"]


name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

new_time <- time / 60

mph <- distance / new_time

data <- data.frame(name, distance, new_time, mph)
data
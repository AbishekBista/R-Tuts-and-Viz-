beads <- rep(c("red", "blue"), times=c(2, 3))
events <- sample(beads, 10000, replace = TRUE)
prop.table(table(events))


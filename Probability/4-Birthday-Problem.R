n <- 50

B <- 10000

results <- replicate(B, {
  bday <- sample(1:365, n, replace =TRUE)
  any(duplicated(bday))
})

mean(results)

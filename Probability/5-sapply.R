#compute_prob <- function(n, B=10000) {
 # results <- replicate(B, {
  #  bday <- sample(1:365, n, replace = TRUE)
   # any(duplicated(bday))
  #})
  #mean(results)
#}

sequence <- seq(1, 60)

#prob <- sapply(sequence, compute_prob)

plot(sequence, prob)

exact_prob <- function(n) {
  prob <- seq(365, 365 - n + 1) / 365
  1 - prod(prob)
}
eprob <- sapply(sequence, exact_prob)

plot(sequence, eprob)
lines(sequence, eprob, col="red")

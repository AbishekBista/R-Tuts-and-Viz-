# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]

murders_new <- data.frame(murders, murder_rate)
murder_rate <- murders_new$murder_rate
murders_new[order(murder_rate, decreasing=TRUE)]

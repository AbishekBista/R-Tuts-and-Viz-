suits <- c("Diamonds", "Clubs", "Hearts", "Spades")
numbers <- c("Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King")
deck <- expand.grid(number = numbers, suit = suits)
deck <- paste(deck$number, deck$suit)

# Probability of drawing a king
kings <- paste("King", suits)
mean(deck %in% kings)

# Probability of drawing two kings in a row
hands <- permutations(52, 2, v = deck)

first_hand <- hands[,1]
second_hand <- hands[,2]

mean (first_hand %in% kings & second_hand %in% kings) / mean(first_hand %in% kings)

# Probability of getting a Blackjack
aces <- paste("Ace", suits)
face_card <- c("Ten", "Jack", "Queen", "King")
face <- expand.grid(number=face_card, suit = suits)
face <- paste(face$number, face$suit)


chance <- combinations(52, 2, v=deck)
mean(chance[,1] %in% aces & chance[,2] %in% face|chance[,2] %in% aces & chance[,1] %in% face)

# Monte Carlo for getting natural black jack

B <- 10000
results <- replicate(B, {
  hands <- sample(deck, 2)
  (hands[1] %in% aces & hands[2] %in% face) | (hands[2] %in% aces & hands[1] %in% face)
})

mean(results)
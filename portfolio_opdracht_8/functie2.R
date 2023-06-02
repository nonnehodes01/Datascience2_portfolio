#functie 2: random woorden of nummers (voor als je iets snel wil testen op een andere set)

generate_random_numbers<- function(length) {
  random_list <- sample(1:100, length, replace = TRUE)
  return(random_list)
}

generate_random_numbers(5)

generate_random_words <- function(length) {
  random_words <- sapply(1:length, function(x) {
    word_length <- sample(5:8, 1)  # Lengte van elk willekeurig woord (5-8 letters)
    word <- paste0(sample(letters, word_length, replace = TRUE), collapse = "")
    return(word)
  })
  
  return(random_words)
}

generate_random_words(5)

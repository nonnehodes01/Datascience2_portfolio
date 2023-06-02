generate_random_words <- function(length) {
  random_words <- sapply(1:length, function(x) {
    word_length <- sample(5:8, 1)  # Lengte van elk willekeurig woord (5-8 letters)
    word <- paste0(sample(letters, word_length, replace = TRUE), collapse = "")
    return(word)
  })

  return(random_words)
}

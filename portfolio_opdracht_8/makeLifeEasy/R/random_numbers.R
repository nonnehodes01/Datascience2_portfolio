generate_random_numbers <- function(length) {
  random_list <- sample(1:100, length, replace = TRUE)
  return(random_list)
}

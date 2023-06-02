# eigen package 
Package: my_package
Title: My Custom R Package
Version: 1.0.0
Authors:
    - Your Name
Description: A custom R package with useful functions for data analysis and manipulation.
License: MIT
Encoding: UTF-8
LazyData: true
RoxygenNote: 7.1.1
Imports:
    dplyr,
    ggplot2,
    tidyr,
    readr,
    DESeq2,
    tidyverse,
    readxl
In het R-bestand van je package (bijvoorbeeld my_package.R):

R
Copy codes
#' Load common libraries
#'
#' This function loads commonly used libraries in R.
#'
#' @export
load_common_libraries <- function() {
  libraries <- c("dplyr", "ggplot2", "tidyr", "readr", "DESeq2", "tidyverse", "readxl")  # Voeg hier de gewenste libraries toe
  
  for (library_name in libraries) {
    if (!require(library_name, character.only = TRUE)) {
      install.packages(library_name, dependencies = TRUE)
      library(library_name, character.only = TRUE)
    } else {
      library(library_name, character.only = TRUE)
    }
  }
}

#' Generate random numbers
#'
#' This function generates a list of random numbers.
#'
#' @param length The desired length of the random list.
#' @return A list of random numbers.
#' @export
generate_random_numbers <- function(length) {
  random_list <- sample(1:100, length, replace = TRUE)
  return(random_list)
}

#' Generate random words
#'
#' This function generates a list of random words.
#'
#' @param length The desired length of the random list.
#' @return A list of random words.
#' @export
generate_random_words <- function(length) {
  random_words <- sapply(1:length, function(x) {
    word_length <- sample(5:8, 1)  # Lengte van elk willekeurig woord (5-8 letters)
    word <- paste0(sample(letters, word_length, replace = TRUE), collapse = "")
    return(word)
  })
  
  return(random_words)
}

#' Change column category
#'
#' This function changes the category of a column in a data frame.
#'
#' @param data The data frame to modify.
#' @param column_name The name of the column to change the category of.
#' @param new_category The desired new category (e.g., "character", "numeric", "factor").
#' @return The modified data frame with the changed column category.
#' @export
change_column_category <- function(data, column_name, new_category) {
  data[[column_name]] <- as(data[[column_name]], new_category)
  return(data)
}

#' Custom summary
#'
#' This function generates a custom summary of a data frame based on grouping and summary columns.
#'
#' @param data The data frame to summarize.
#' @param grouping_column The column to group by.
#' @param summary_columns The columns to compute summary statistics for.
#' @return A data frame with the custom summary statistics.
#' @export
custom_summary <- function(data, grouping_column, summary_columns) {
  summary <- data %>%
    group_by({{ grouping_column }}) %>%
    summarise(across({{ summary_columns }}))
  
  return(summary)
}
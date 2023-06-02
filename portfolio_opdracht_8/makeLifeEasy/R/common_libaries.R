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

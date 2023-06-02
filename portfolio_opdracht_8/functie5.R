# functie 5: custom summary

library(dplyr)

custom_summary <- function(data, grouping_column, summary_columns) {
  summary <- data %>%
    group_by({{ grouping_column }}) %>%
    summarise(across({{ summary_columns }}))
  
  return(summary)
}


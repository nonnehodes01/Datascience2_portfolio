#Functie 4: aanpassen van catagory

change_column_category <- function(data, column_name, new_category) {
  data[[column_name]] <- as(data[[column_name]], new_category)
  return(data)
}
\name{change_column_category}
\alias{change_column_category}
\title{Change Column Category}
\usage{
change_column_category(data, column_name, new_category)
}
\arguments{
\item{data}{The input data frame or tibble.}
\item{column_name}{The name of the column to be changed.}
\item{new_category}{The desired category for the column (e.g., "numeric", "character", "factor").}
}
\description{
Changes the category of a column in a data frame or tibble.
}
\examples{
data <- data.frame(column1 = c(1, 2, 3), column2 = c("a", "b", "c"))
change_column_category(data, "column1", "numeric")
}

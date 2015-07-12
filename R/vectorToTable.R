#' Split a vector into a data frame of n columns for use with xtabl
#'
#' A vector too long for printing as a single column table is split into n columns.  The original vector is
#' split into number.of.columns.  Any extra cells are filled with "".  The resulting table
#' is sorted by columns if by.row is left at the default value of FALSE.
#'
#' @name vectorToTable
#' @title Split Vector Into Multiple Columns of Data Frame
#' @param original.vector, number.of.colums
#' @return a data frame containing x split on medial symbols
#' @seealso \code{\link{gsub}}
#' @author John A. Clouse
#' @examples
#' sample.vector <- 1:100
#' vectorToTable(sample.vector, 5)
#'
#' sample.vector <- sort(replicate(23, paste(sample(LETTERS, 5, replace=TRUE), collapse="")))
#' vectorToTable(sample.vector, 5)
#' vectorToTable(sample.vector, 5, by.row = TRUE)
#' @export
#'

# Take a long list and convert it into a multi-column table

vectorToTable <- function (vector.to.split, width = 3, by.row = FALSE) {
  # result.matrix <- original.vector

  # replicate "" enough times to fill the complete matrix
  result.matrix <- c(vector.to.split,
                         rep("", times = (width - length(vector.to.split) %% width) %% width))
  result.matrix <- data.frame(matrix(result.matrix, ncol = width, byrow = by.row))
  return(result.matrix)
}

fillTable <- vectorToTable


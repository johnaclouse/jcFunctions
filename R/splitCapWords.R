#' Split words containing medial capital letters, periods, or underscores
#'
#' For each word within a string, split words with medial symbols (capitals,
#' periods, or underscores) by addinga a space before all medial symbols
#' preceeded by a lower case letter
#'
#' @name splitCapWords
#' @title Split Words with Medial Symbols
#' @param x a string
#' @return string with words split on medial symbols
#' @seealso \code{\link{gsub}}
#' @author John A. Clouse
#' @examples
#' splitCapWords("TestingThisString")
#' splitCapWords("Testing.this.String")
#' splitCapWords("testing.this.string")
#' splitCapWords("testing_this.stRing")
#' @export
#'


splitCapWords <- function(x) {
  x <- gsub("([[:lower:]])([[:upper:]])", "\\1 \\2", x) # Add a space after a lower case letter preceeding an upper case
  x <- gsub("\\.", " ", x) # replace any periods with spaces
  x <- gsub("_", " ", x) # replace any underscores with spaces
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE) # capitalize the first letter of every word
  return(x)
}

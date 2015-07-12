#' Convert a string to psuedo title case
#'
#' Converts all characters to lower case and then changes the
#' first character of each word to be upper case.
#'
#'
#' @name toTitle
#' @title Convert a String to Psuedo Title Case
#' @param x a string
#' @return string converted to psuedo title case
#' @seealso \code{\link{toupper}}
#' @author John A. Clouse
#' @examples
#' # Sample data
#' x <- "convert.this to titleCase and This"
#'
#' # Note: title case is not proper but rather first letter capitalized case
#' # Note: capitals appearing mid-word will be converted to lower case
#' toTitle(x)
#' @export
#'
#'
#'

toTitle <- function(x) {
  x <- tolower(x)
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1, 1)), substring(s, 2),
        sep = "", collapse = " ")
}

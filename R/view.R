#' View data frame in Excel
#'
#' View an existing data frame in an Excel workbook.  Row numbers are included.
#' Requires the existance of Microsoft Excel or another program associated with
#' the .csv file extension.
#'
#' Note: the data frame is written to the \code{tempdir()}.  The file will be
#' left behind to be cleaned up by the user or the operating system (not
#' guaranteed.)
#'
#' @name view
#' @title View Data Frame in Excel
#' @param x a data frame
#' @return NULL
#' @author John A. Clouse
#'
#' @examples
#' x <- 1
#'
#' @export
#'


view <- function(x) {
  csvName <- paste0(tempdir(), "\\", substitute(x), ".csv")
  # csvName <- paste0("c:\\temp\\", substitute(x), ".csv")
  write.csv(x, file = csvName)
  shell.exec(csvName)
}



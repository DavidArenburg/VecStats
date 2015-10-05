#' Vectorised Row Mins
#' @param x A Matrix
#' @param na.rm If you want to remove NAs TRUE/FALSE
#' @return rowwsie mins
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(c(NA, 1:20), 20, replace = TRUE), ncol = 5L)
#' RowMins(M, na.rm = TRUE)

RowMins <- function(x, na.rm = FALSE) {
  do.call(pmin.int, c(na.rm = na.rm, as.data.frame(x)))
}


#' Vectorised Row Maxs
#' @param x A Matrix
#' @param na.rm If you want to remove NAs TRUE/FALSE
#' @return rowwsie maxs
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(c(NA, 1:20), 20, replace = TRUE), ncol = 5L)
#' RowMaxs(M, na.rm = TRUE)

RowMaxs <- function(x, na.rm = FALSE) {
  do.call(pmax.int, c(na.rm = na.rm, as.data.frame(x)))
}


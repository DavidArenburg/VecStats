#' Vectorised rowwsie Variance
#' @param x A Matrix
#' @return rowwsie variance
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(25), ncol = 5)
#' RowVar(M)

RowVar <- function(x) {
  rowSums((x - rowMeans(x))^2L)/(dim(x)[2L] - 1L)
}

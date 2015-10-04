#' Vectorised rowwsie Standard Deviation
#' @param x A Matrix
#' @return rowwsie Standard Deviation
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(25), ncol = 5)
#' RowSD(M)

RowSD <- function(x) {
  sqrt(rowSums((x - rowMeans(x))^2L)/(dim(x)[2L] - 1L))
}

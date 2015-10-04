#' Vectorised rowwsie Covariance
#' @param A a Matrix
#' @param B a Matrix
#' @return rowwsie Covariance
#' @export
#' @examples  
#' set.seed(123)
#' A <- matrix(sample(25), ncol = 5)
#' B <- matrix(sample(25), ncol = 5)
#' RowCov(A, B)

RowCov <- function(A, B){
  rowSums((A - rowMeans(A))*(B - rowMeans(B)))/(dim(A)[2L] - 1L)
}

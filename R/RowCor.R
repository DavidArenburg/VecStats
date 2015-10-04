#' Vectorised rowwsie Pearson Correlation
#' @param A a Matrix
#' @param B a matrix
#' @return rowwsie Correlation
#' @export
#' @examples  
#' set.seed(123)
#' A <- matrix(sample(25), ncol = 5)
#' B <- matrix(sample(25), ncol = 5)
#' RowCor(A, B)

RowCor <- function(A, B) {RowCov(A, B)/(RowSD(A) * RowSD(B))}
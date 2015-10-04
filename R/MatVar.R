#' Vectorised Variance
#' @param x A Matrix
#' @param dim dimention: either 1L for rowwsie or 2L for colwise
#' @return rowwsie/colwise variance
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(25), ncol = 5)
#' MatVar(M, 1L)

MatVar <- function(x, dim = 1L) {
  if(dim == 1L){
    rowSums((x - rowMeans(x))^2L)/(dim(x)[2L] - 1L)
    } else if (dim == 2L) {
       rowSums((t(x) - colMeans(x))^2L)/(dim(x)[1L] - 1L)
    } else stop("Please enter valid dimention")
}

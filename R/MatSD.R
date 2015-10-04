#' Vectorised Standard Deviation
#' @param x A Matrix
#' @param dim dimention: eather 1L for rowwsie or 2L for colwise
#' @return rowwsie/colwise variance
#' @export
#' @examples  
#' set.seed(123)
#' M <- matrix(sample(25), ncol = 5)
#' MatSD(M, 1L)

MatSD <- function(x, dim = 1L) {
  if(dim == 1L){
    sqrt(rowSums((x - rowMeans(x))^2L)/(dim(x)[2L] - 1L))
    } else if (dim == 2L) {
      sqrt(rowSums((t(x) - colMeans(x))^2L)/(dim(x)[1L] - 1L))
    } else stop("Please enter valid dimention")
  }

## This is a set of vectorized row wise operation I've gathered from my answers on SO for the last year

#@ Gets a matrix and computes variance by row (dim == 1) or by column (dim == 2)
MatVar <- function(x, dim = 1) {
  if(dim == 1){
    rowSums((x - rowMeans(x))^2)/(dim(x)[2] - 1)
  } else if (dim == 2) {
    rowSums((t(x) - colMeans(x))^2)/(dim(x)[1] - 1)
  } else stop("Please enter valid dimention")
}

MatSD <- function(x, dim = 1) {
  if(dim == 1){
    sqrt(rowSums((x - rowMeans(x))^2)/(dim(x)[2] - 1))
  } else if (dim == 2) {
    sqrt(rowSums((t(x) - colMeans(x))^2)/(dim(x)[1] - 1))
  } else stop("Please enter valid dimention")
}


#@ Simplified case of the above. Runs rowwise variance
RowVar <- function(x) {
  rowSums((x - rowMeans(x))^2)/(dim(x)[2] - 1)
}

#@ Runs rowwise SD
RowSD <- function(x) {
  sqrt(rowSums((x - rowMeans(x))^2)/(dim(x)[2] - 1))
}

#@ Runs rowwise Covariance
RowCov <- function(x, y){
  rowSums((x - rowMeans(x))*(y - rowMeans(y)))/(dim(x)[2] - 1)
}

#@ Runs rowwise correlation (using the above functions)
RowCor <- function(A, B) RowCov(A, B)/(RowSD(A) * RowSD(B))
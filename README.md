# VecStats
<<<<<<< HEAD
**Vectrozied stats functions**

These functions are meant to replace `*apply` loops when working row wise
There is nothing new here, and most of this already written in C++ in the `matrixStats` package. The only thing here is that these function written in base R only and thuse easy to modify/understand and no dependencies either.

---

**Load the package**
```r
devtools::install_github('davidarenburg/VecStats')
```

---

**Load the package**
```r
devtools::install_github('davidarenburg/VecStats')
>>>>>>> e345a3c9ab331c1b89fe5cfcf2549206fc048e95
```

**Some use cases**
```r
set.seed(123)
(M <- matrix(sample(25), ncol = 5))
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    8    1   15   13    5
# [2,]   19   11    7    3   12
# [3,]   10   17    9   21   24
# [4,]   20   23   14   18    4
# [5,]   22   25    2    6   16

set.seed(124)
(M2 <- matrix(sample(25), ncol = 5))
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    3    6   19    1    4
# [2,]   10   23   15   20   25
# [3,]   12   22   24   18    8
# [4,]    9   16   11    7   14
# [5,]    5   21   17   13    2

### -- Var per row -- ###
MatVar(M, 1) # Or RowVar(M)
# [1] 32.8 35.8 43.7 54.2 99.2
apply(M, 1, var)
# [1] 32.8 35.8 43.7 54.2 99.2

### -- Var per column (not very afficient because uses `t` (needs some more thinking) -- ###
MatVar(M, 2)
# [1] 40.2 94.8 28.3 58.7 68.2
apply(M, 2, var)
# [1] 40.2 94.8 28.3 58.7 68.2

### -- SD per row -- ###
RowSD(M)
# [1] 5.727128 5.983310 6.610598 7.362065 9.959920
apply(M, 1, sd)
# [1] 5.727128 5.983310 6.610598 7.362065 9.959920

### -- Covariance between two matrices per row -- ###
RowCov(M, M2)
# [1]  17.70 -14.80 -20.20  -4.15 -11.15
sapply(seq_len(nrow(M)), function(i) cov(M[i, ], M2[i, ]))
# [1]  17.70 -14.80 -20.20  -4.15 -11.15

### -- Correlation between two matrices per row -- ###
RowCor(M, M2)
# [1]  0.4314969 -0.4050100 -0.4545079 -0.1545691 -0.1401550
sapply(seq_len(nrow(M)), function(i) cor(M[i, ], M2[i, ]))
# [1]  0.4314969 -0.4050100 -0.4545079 -0.1545691 -0.1401550
````

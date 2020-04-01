## A simple function to return a list of small functions to 
## set/get a matrix and matrix inverse.
## Simply done by assigning values within small functions.

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(matrix) {
    x<<-matrix
    I<<-NULL
  }
  get <- function() x
  set_inverse <- function(solve_I) I<<-solve_I
  get_inverse <- function() I
  list(set=set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  Inv <- x$get_inverse()
  if (is.null(Inv)){
    Inv<-solve(x$get())
    x$set_inverse(Inv)
    return(Inv)
  }
  Inv
}

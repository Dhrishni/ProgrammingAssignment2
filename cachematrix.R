## Put comments here that give an overall description of what your
## functions do


## This function creates a list containing functions to
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the inverse of the matrix
## 4. Get the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() {
    x
  }
  setsolve <- function(solve) {
    s <<- solve
  }
  getsolve <- function() {
    s
  }
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## This function calculates the inverse of the matrix created with makeCacheMatrix
## after checking if the inverse has been created already, in which case it 
## returns the cached value

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached inverse")
    return(s)
  }
  mat <- x$get()
  s <- solve(mat, ...)
  x$setsolve(s)
  s
}

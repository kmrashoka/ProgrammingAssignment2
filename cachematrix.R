## Put comments here that give an overall description of what your
## functions do

## need to run the function and provide some matrix example to show the below program/function is is working as aspect

## generates cache-able matrix with get/set functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(x.inv) m <<- x.inv
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## calculates the inverse of a matrix.  if the matrix has been
## calculated already, takes the cached version; and caches
## after it has been calculated

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}

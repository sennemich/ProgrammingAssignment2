## makeCacheMatrix outputs a list of four functions
## the four functions set/get the value of the matrix or the value of its inverse


makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## the function cacheSolve takes the list that was created by makeCacheMatrix as input
## it determines if a value has already been assigned to the inverse
##if it has, it returns the value
##if not, it calculates and assigns the value of the inverse and returns it

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)a
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m 
  
  
}

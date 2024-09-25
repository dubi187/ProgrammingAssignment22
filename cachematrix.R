## Create an arbitrary matrix and Calculate the inverse value of that matrix

# Set a new matrix
# Retrieve the matrix
# Cache the Inverse
# Retrieve the cached Inverse

  makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    set <- function(y){
      x <<- y
      j <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) j <<- inverse
    getInverse <- function() j 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
  }


## First check whether the Inverse is calculated 
## If so, get the Inverse from cache and skip the computation
## If not, it calculates the Inverse and sets the value in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}

## The following is a pair of functions that cache and compute the inverse of a matrix.

## This 'makeCacheMatrix' function creates an object that can cache its inverse

makeCacheMatrix <- function(x2 = matrix()) {
    inverse <- NULL
    set <- function(x) {
	x2 <<- x;
	inverse <<- NULL;
    }
    get <- function() return(x2);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## This 'cacheSolve' function computes the inverse of the special matrix returned by the above 'makeCacheMatrix' above.

cacheSolve <- function(x2, ...) {
    inverse <- x2$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
	return(inverse)
    }
    data <- x2$get()
    invserse <- solve()data, ...)
    x2$setinv(inverse)
    return(inverse)
}


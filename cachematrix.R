# function: makeCacheMatrix
# description: This function creates a special "matrix" object that can cache its inverse.
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
	
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
	get <- function() {
	    x
	}
    
	setinverse <- function(inverse) {
	    inv <<- inverse
	}
	
	getinverse <- function() {
	    inv
	}
	
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}




# function: cacheSolve
# description: This function computes the inverse of the special "matrix" returned by makeCacheMatrix
#   If the inverse has already been calculated (and the matrix has not changed), 
#   then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    # try to get the cached inverse first
    inv <- x$getinverse()
	
	# if inv is available
    if(!is.null(inv)) {
        message("returning cached inv.")
        return(inv)
    }
	
	# get the matrix to get inv and store for later use
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    
	inv
}

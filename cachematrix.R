## Put comments here that give an overall description of what your
## functions do
## The set of functions below provide a way to calculate the inverse of a matrix allowing for caching to enhance performance.

## Write a short comment describing this function
##Generates and caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m

        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## retrieves the inverse of a matrix from the cache or real time.

cacheSolve <- function(x) {
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

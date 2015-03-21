# makeCacheMatrix creates a special "matrix" object that can cache it's inverse. 
# It's defines four others functions: 
# "set" stores the matrix in cache; 
# "get" returns the matrix; 
# "setInverse" stores the inverse of the matrix in cache; 
# "getInverse" returns the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL    
        }
        get <- function() x                           
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

# 'cacheSolve' it's a function that's calculates the inverse of the matrix created by 
# the function makeCacheMatrix. However, the first step of 'cacheSolve' is checks if the 
# inverse of the matrix  was calculated, if YES the cacheSolve returns the data from the 
# cache. If NOT the cacheSolve calculates the inverse of the matrix and stores in the cache.

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)                          
        set function
        
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setm <- function(solve) m <<- solve
        getm <- function() m
        list(set = set, get = get,
             setme = setm,
             getmean = getm)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix, ...) { ## we have to specify the matrix form
        ## Return a matrix that is the inverse of 'x'
        m <- x$getm()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(matrix, ...)
        x$setm(m)
        m
}
}

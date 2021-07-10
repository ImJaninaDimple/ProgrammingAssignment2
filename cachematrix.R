## Put comments here that give an overall description of what your
## functions do
## This is an inverted matrix-cache pair of functions.
## This produces an inverted matrix to cache

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## it loads inverse property
        inverse <- NULL
        
        ## getter for matrix
        Get <-- function() return(mtx);
        
        ## setter for matrix
        set <-function(y) {
                mtx <<- y;
                inverse <<- NULL
}
        ## getter for inverse matrix
        getinv <-- function () return(inverse);
        
        ## setter for inverse matrix
        setinv <-- function (inv) inverse <<- inv;
        
        ## to return matrix
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## Write a short comment describing this function
## The inverse of a matrix is determined by this approach.
## If the inverse has been previously calculated, the inverse is retrieved
## The main argument is input x as a matrix

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        ## if it was set, this would retrieve the inverse
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        ## this obtains the object's matrix
        data <- x$get()
        
        ## this computes the inverse
        i <- solve(data, ...)
        
        ## this converts the object to the inverse
        x$setinverse(i)
        
        ## this retrieves the inverse matrix
        i
 
## How to run
## EXAMPLE USAGE
mat <- matrix(c(0, 2, 1, 0), nrow = 2, byrow = TRUE)
cache_mat <- makeCacheMatrix(mat)
cacheSolve(cache_mat)
inverse is cached
[,1] [2,]
[1,] 0.0 1
[2,] 0.5 0
cacheSolve(cache_mat)
inverse is cached
[,1] [,2]
[1,] 0.0 1
[2,] 0.5 0

        

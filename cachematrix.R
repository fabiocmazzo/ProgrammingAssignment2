##  i'll use a m as a attribute to set and get a matrix
##  In the function declaration, i'll set a m <- null

## MakeCacheMatrix, a list containing a set and gets
## When set a value, cache (m) is set to NULL


makeCacheMatrix <- function(x = matrix()) {
  
   m    <- NULL 
   set  <- function (Y) {
           x <<- y
           m <<- NULL
   }
   
   get <- function() x
   setinverse <- function(inverse) m <<- inverse
   getinverse <- function() m
   
   list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
        
}


## I used solve function to calculate a inverse of a matrix

cacheSolve <- function(x, ...) {
        
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)make
        }
        
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
        
        
}

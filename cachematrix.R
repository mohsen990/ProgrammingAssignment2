## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix())
{
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setinverse <- function(s) m<<- s
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{

        ## Return a matrix that is the inverse of 'x'
     m <-x $getinverse()
    if(!is.null(m)){
      print("cached data")
      return(m)
    }
    matrix <- x$get
    m <- solve(matrix, ...)
    x$setminverse(m)
    m
}


## Short comment of this function

cacheSolve <- function(x, ...) {
        i <- x$getinverse()  ##Return matrix that is inverse of x
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        }

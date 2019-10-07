## Short comment of this function

makeCacheMatrix <- function(x = matrix()) {  ##Define arguement with model matrix
        i <- NULL  ##Value of matrix
        set <- function(y) {  ##Assign new variable with function(y)
                x <<- y  ##Value of matrix
                i <<-NULL  ##If new matrix, rest of value to NULL
        }
        get <- function() x  ##Assign new variable with function(x)
        setinverse <- function(inverse) i <<- inverse  ##Assign new variable with function(function(inverse)), reset value i
        getinverse <- function() i  ##Get value of i where is called
        list(set = set,  ##Run function within the list
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
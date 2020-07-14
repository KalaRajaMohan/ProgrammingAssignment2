## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
j <- NULL
set <-function(y){
x <<- y
j <<- NULL
}
get <- function()x
setInverse <- function(inverse)j <<- inverse
getInverse <- fucntion()j
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}
        
## Write a short comment describing this function
##This function is written to find the inverse of a matrix and return it

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
j <- x$getInverse()
if(!is.null(j)){
message("getting cached data")
return(j)
}
mat <- x$get()
j<- solve(mat,...)
x$setInverse(j)
j
 
}

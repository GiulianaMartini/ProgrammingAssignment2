## Cache de inverse of a matrix

## Creates a special matrix object that can cache the inverse of the same matrix

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
## To set de the matrix
set<-function(matrix){
        m<<-matrix
        i<<-NULL
}
## To get de the matrix
get<-function(){
        m
}
## To set de the inverse matrix
setInverse<-function(inverse){
i<<-inverse
}
## To get de the inverse matrix
getInverse<-function(){
        i
}

## Retrieves the inverse matrix from the cache

cacheSolve <- function(x, ...) {
        m<-x$getInverse()
        if(!is.null(m)){
                Message("data from the cache")
                return(m)
        }
## Matriz from object
data<-x$get()
## Calculation of the inverse matrix
m<-solve(data)%*%data
## Set the inverse
x$setInverse(m)
## retrun the inverse matrix
m
}

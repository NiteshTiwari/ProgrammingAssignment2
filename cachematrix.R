## Put comments here that give an overall description of what your
## functions do

## Below fucntion will create object that will store a matrix and cache's its mean.

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        ##Get the value of Matrix
        get<-function() x
        ##Set the value of matrix
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
        setmatrix=setmatrix,
        getmatrix=getmatrix)
}


## cachSolve will return the value of matrix from cache memory

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
        ##if function will check whether matrix is null or not
        if(!is.null(m)){
                ##message function will notify user regarding data fecth 
                message("getting cached data")
                ##return function will return the values of matrix 
                return(m)
}

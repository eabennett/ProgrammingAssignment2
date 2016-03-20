## I forgot to put in comments, I know this is not my original submitted file, but here is one with comments if it's worth anything


makeCacheMatrix <- function(x = matrix()) {
 ##this make cache matrix holds four functions, allowing the user to set and get the inputed matrix, 
  ##as well as manually set the inverse matrix
   m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
 ##this looks to see if an inverse is set, and if not computes and prints the inverse
   m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
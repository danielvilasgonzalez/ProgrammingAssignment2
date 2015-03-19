#My matrix

## x = matrix which returns a list, containing a function to

###1.-set the value of the vector
###2.-get the value of the vector
###3.-set the value of the mean
###4.-get the value of the mean  

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set<-function(y) {
## assigning a value to an object in a different environment
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setInv<-function(inv) m <<-inv
  getInv<-function() m
  list(set=set,get=get,
       setInv=setInv,
       getInv=getInv)
  
}

cacheSolve <- function(x, ...) {
  
## inverse of the original matrix -------- makeCacheMatrix()
  
  m<-x$getInv()
  if (!is.null(m)) {
    print
    return(m)
    
## returning the inverted matrix

  }
  m<-solve(x$get())
  x$setInv(m)
  m
}

makeCacheMatrix <- function(x = matrix()) {
	z <- NULL 						#create cache
	setMatrix <- function(y = matrix()) {
		x <<- y
		z <<- NULL
	} 							#your setmatrix function here
	getMatrix <- function() x 			#get matrix  function
	setInv <- function(Inverse = matrix()) { 	#set inverse function
		z <<- solve(Inverse)
	}
	getInv <- function() z				#get inverse function
	list(setMatrix = setMatrix, getMatrix = getMatrix, 
		setInv = setInv, getInv = getInv)
}
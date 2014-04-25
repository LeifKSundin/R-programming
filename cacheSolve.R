cacheSolve <- function(x, ...) {
	z <- x$getInv()
	if(!is.null(z)) {
		message("getting cached data")
		return(z)
	}				#if there is a cache then just return z(cache)
	mtr <- x$getMatrix()	#if there is no cache then compute, store it and return
	z <- solve(mtr,...)
	x$setInv(solve(z))
	z
}
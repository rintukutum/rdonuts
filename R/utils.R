#' Utilities for manipulation
#' 
#' Convert angle to radian
#' @param angle Angle \code{angle}
#' @return radian
#' @export
ang2rad <- function(angle){
	radian <- (angle/180)*pi
	return(radian)
}


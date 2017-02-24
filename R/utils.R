#' Utilities for manipulation
#' 
#' Convert angle to radian
#' @param angle Angle \code{angle}
#' @return radian
#' @export
#' @examples
#' angles <- 0:180
#' radian <- ang2rad(angle = angles)
ang2rad <- function(angle){
	radian <- (angle/180)*pi
	return(radian)
}

#' Trigonometric functions
#'
#' Use angle as input instead of radian, Sin, Cos, Tan
#' @param angle Angle \code{angle}
#' @param digit Digit, default is 10 \code{digit}
#' @export

Sin <- function(angle, digit = 10){
	value <- round(sin(ang2rad(angle)), digit)
	return(value)
}

Cos <- function(angle, digit = 10){
	value <- round(Cos(ang2rad(angle)),digit)
	return(value)
}

Tan <- function(angle, digit = 10){
	value <- round(tan(ang2rad(angle)), digit)
	return(value)
}


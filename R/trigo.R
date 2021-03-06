#' Trigonometric functions
#'
#' Use angle as input instead of radian, Sin, Cos, Tan
#' @name Sin Cos Tan
#' @param angle Angle \code{angle}
#' @param digit Digit, default is 10 \code{digit}
#' @export
#' @examples
#' Sin(90)
#' Cos(90)
#' Tan(45)
#' @rdname trigo
Sin <- function(angle, digit = 10){
	value <- round(sin(ang2rad(angle)), digit)
	return(value)
}

#' @rdname trigo
#' @export
Cos <- function(angle, digit = 10){
	value <- round(cos(ang2rad(angle)),digit)
	return(value)
}

#' @rdname trigo 
#' @export
Tan <- function(angle, digit = 10){
	value <- round(tan(ang2rad(angle)), digit)
	return(value)
}


#' Proportion to Angle
#'
#' Convert proportion to angles for arc
#' @param prop Proportion \code{prop}
#' @export
#' @examples 
#' prop <- c(A = 0.1,B = 0.3, C = 0.6)
#' prop2ang(prop)
prop2ang <- function(prop){
	#-----
	# prop to angle
	if(length(prop) <= 0){
		stop('Please provide correct prop value')
	}

	if(sum(prop) != 1){
		stop('Please provide prop value 0 to 1')
	}
	if(length(prop) == 1){
		angs_arc <- c(
			s.ang = 0,
			e.ang = 360
		)
		names(angs_arc) <- names(prop)
		return(angs_arc)
	}else{
		#----
		# sort before split
		prop <- sort(round(
		unlist(prop),
		digit = 4
		))
	
		angs <- round(
			seq(
				0,
				360,
				length.out = 360
				),
			digit = 2
			)
		props <- round(
			seq(
				0,
				1,
				length.out = 360),
			digit = 4
			)
		bins <- as.factor(
			findInterval(
				props,
				as.numeric(prop)
			)
		)
		bin_angs <- split(angs, bins)
		#----
		# use the custom function to get only start and end
		angs_arc <- get_angs_arc(bin_angs)
		# names(angs_arc) <- names(prop)
		return(angs_arc)	
	}
}
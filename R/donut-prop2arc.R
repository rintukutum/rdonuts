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
		order_ <- names(prop)
		#----
		# sort before split
		prop <- sort(round(
		unlist(prop),
		digit = 4
		))
	
		angs <- seq(
				0,
				360,
				length.out = 360
			)
		props <-seq(
				0,
				1,
				length.out = 360)

		bins <- findInterval(
				props,
				cumsum(prop)
			)
		bins[360] <- bins[359]
		bin_angs <- split(angs, as.factor(bins))
		#----
		# use the custom function to get only start and end
		angs_arc <- get_angs_arc(bin_angs)
		names(angs_arc) <- names(prop)
		#----
		# re-order into original order
		angs_arc <- angs_arc[order_]
		return(angs_arc)
	}
}
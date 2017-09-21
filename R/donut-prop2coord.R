#'
#' prop2coord
#' @export
prop2coord <- function(
	x = 1,
	y = 1,
	radius = 1,
	size = 0.5,
	fill = 'skyblue'
	){
	plot(
			10:-10,
			10:-10,
			type='n',
			asp = 1)
	innerRadius <- scale_par(radius)
	innerCoord <- get_xy_coord(
		x = x,
		y = y,
		r.x = innerRadius$x_,
		r.y = innerRadius$y_
	)
	outerRadius <- scale_par(radius+size)
	outerCoord <- get_xy_coord(
		x = x,
		y = y,
		r.x = outerRadius$x_,
		r.y = outerRadius$y_
	)
	#------
	# divisions
	prop <- sort(get_prop(.data[,.var]))
	cum_prop <- cumsum(prop)
	x <-seq(
		0,
		1,
		length.out = 360)
	
	xi <- findInterval(
		x,
		cum_prop,

		)
	# remove the additional value
	# and add previous to it
	xi[361] <- xi[360]
	donut_coord <- data.frame(
		xi = xi,
		inner.x = innerCoord$x,
		inner.y = innerCoord$y,
		outer.x = outerCoord$x,
		outer.y = outerCoord$y
		)
	xi_coord <- dlply(
		.data = donut_coord,
		.variables = 'xi',
		.fun = function(x){
			x[,-1]
			})
	cols <- as.factor(names(xi_coord))
	#------
	# padding
	# not incorporated 
	for(i in 1:length(xi_coord)){
		polygon(
		x = c(
			xi_coord[[i]]$inner.x,
			rev(xi_coord[[i]]$outer.x),
			xi_coord[[i]]$inner.x[1]
		),
		y = c(
			xi_coord[[i]]$inner.y,
			rev(xi_coord[[i]]$outer.y),
			xi_coord[[i]]$inner.y[1]
		),
		border=NA,
		col = cols[i]
		)
		Sys.sleep(1)	
	}
	#polygon(
	#	x = c(
	#	innerCoord$x,
	#	rev(outerCoord$x),
	#	innerCoord$x[1]
	#	),
	#	y = c(
	#	innerCoord$y,
	#	rev(outerCoord$y),
	#	innerCoord$y[1]
	#	),
	#	border=NA,
	#	col = fill
	#)

}

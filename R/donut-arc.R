#' Draw arc without padding
#'
#' Need to add padding
#' @export
draw_arc <- function(
	x,	# x-coordinate
	y,  # y-coordinate
	s.ang,
	e.ang,
	stroke = 'skyblue', # stroke color
	width = 15, # width
	height = 15, # height
	stroke.size = 8,
	stroke.position = 'out' # 'in' = inside, mid = 'middle', out = 'outside'
){
	#----
	# re-scale according to device size
	r_x <- scale_par(width*0.1)$x
	r_y <- scale_par(height*0.1)$y
	#----------
	# x & y coordinate for fill area
	fillArea <- get_xy_coord(
		x = x,
      	y = y,
      	r.x = r_x,
      	r.y = r_y,
      	s.angle = s.ang,
      	e.angle = e.ang
    )
	#-----
	# x & y coordinate for stroke area
	r_x_outer <- scale_par(
		r = width*0.1 +  stroke.size * 0.1
	)$x
	r_y_outer <- scale_par(
		r = height*0.1 +  stroke.size * 0.1
	)$y
	strokeArea <- get_xy_coord(
		x = x,
      	y = y,
      	r.x = r_x_outer,
      	r.y = r_y_outer,
      	s.angle = s.ang,
      	e.angle = e.ang
	)
	polypath(
		x = c(fillArea$x,
			rev(strokeArea$x),
			fillArea$x[1]
			),
		y = c(fillArea$y,
			rev(strokeArea$y),
			fillArea$y[1]
			),
		border = NA,
		col = stroke
	)
	#-------
	# 
}

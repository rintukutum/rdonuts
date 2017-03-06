#--------
# no problem functions
get_prop <- function(var){
	prop <- prop.table(table(var))
	return(prop)
}
scale_par <- function(radius){
 par_ <- par()
 x_ <- diff(par_$usr[1:2])/(par_$pin[1] * 2.54)
 y_ <- diff(par_$usr[3:4])/(par_$pin[2] * 2.54)
  return(
   list(
   	x_ = radius * x_,
    y_ = radius * y_
    )
  )
}
get_xy_coord <- function(
	x,
	y,
	r.x, # width
	r.y, # height
	s.angle = 0,
	e.angle =  360
	)
{
	ang <- s.angle:e.angle
	rad <- ang2rad(ang)
	coord <- list(
		x = x + r.x * cos(rad),
		y = y + r.y * sin(rad)
		)
	return(coord)
}

#------
# this works for 2 and 3
# but not for more than 3
get_angs_arc <- function(bin_angs){
	len_bins <- length(bin_angs)
	angs_arc <- list()
	for(i in 1:len_bins){
		s.ang <- bin_angs[[i]][1]
		if(i == len_bins){
			# last bin
			x_angs <- bin_angs[[len_bins]]
			len.bin_ang <- length(x_angs)
			e.ang <- x_angs[len.bin_ang]
		}else{
			e.ang <- bin_angs[[i+1]][1]	
		}
		angs_arc[[i]] <- c(
			s.ang = s.ang,
			e.ang = e.ang
		)
		angs_arc[[i]] <- angs_arc[[i]]
	}
	return(angs_arc)
}




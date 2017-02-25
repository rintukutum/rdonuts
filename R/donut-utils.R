get_prop <- function(var){
	prop <- prop.table(table(var))
	return(prop)
}

get_angs_arc <- function(bin_angs){
	len_bins <- length(bin_angs) - 1
	angs_arc <- list()
	for(i in 1:len_bins){
		s.ang <- bin_angs[[i]][1]
		e.ang <- bin_angs[[i+1]][1]
		if(i == len_bins){
			# last bin
			x_angs <- bin_angs[[len_bins+1]]
			len.bin_ang <- length(x_angs)
			e.ang <- x_angs[len.bin_ang]
		}
		angs_arc[[i]] <- c(
			s.ang = s.ang,
			e.ang = e.ang
		)
	}
	return(angs_arc)
}


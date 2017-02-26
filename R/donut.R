donut <- function(
	.data,
	.var
	){
	#-------
	# data check
	if(is.data.frame(.data) == FALSE){
		stop('convert your data into data.frame format!')
	}
	#-------
	# check variable names
	var_check <- intersect(
		.var,
		colnames(.data)
	)
	if(length(var_check) == 0){
		err_msg <- paste0(
			.var,
			" is not present in your data set\n",
			"Please check your variable names\n"
			)
		stop(err_msg)
	}
	#--------
	# select specified variables
	.data <- .data[,.var]
	if(length(.var) == 1){
		prop <- get_prop(.data)
		angs <- prop2ang(prop)
		plot(
			10:-10,
			10:-10,
			type='n')
		cols <- as.factor(names(angs))
		for(i in 1:length(angs)){
			draw_arc(
					x = 1,
					y = 1,
					s.ang = angs[[i]][1],
					e.ang = angs[[i]][2],
					stroke = cols[i]
			)
		}	
		return(angs)
	}else{
		
	}
}
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
		colnames(.var)
	)
	if(length(var_check) == 0){
		err_msg <- paste0(
			.var,
			" is not present in your data set\n",
			"Please check your variable names\n"
			)
		stop(err_msg)
	}
	.data <- .data[,.var]
	if(length(.var) == 1){
		prop <- prop.table(table(.data))
	}else{

	}
	

}
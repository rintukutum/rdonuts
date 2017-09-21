#' data-driven donuts
#' @examples
#' set.seed(1004)
#' .data <- data.frame(G1 = sample(LETTERS[1:5],100,TRUE),
#' G2 = sample(LETTERS[1:3],100,TRUE))
#' .var <- colnames(.data)[1]
#' donut(.data, .var)
#' @export

donut <- function(
	.data,
	.var,
	delay=0,
	asp=1
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
		#-------
		plot(
			seq(1,10),
			seq(1,20,length.out=10),
			type='n',
			asp=asp)
		# points(10,10,pch=21,cex=5,col='red')
		#----
		cols <- RColorBrewer::brewer.pal(12,'Paired')
		for(i in 1:length(angs)){
			draw_arc(
					x = 5,
					y = 10,
					s.ang = angs[[i]][1],
					e.ang = angs[[i]][2],
					stroke = sample(cols,1)
			)
		Sys.sleep(delay)
		}	
		return(angs)
	}else{
		
	}
}

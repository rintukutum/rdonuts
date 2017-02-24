prop2arc <- function(prop){
	
	#-----
	# prop to angle
	prop <- round(
		unlist(prop),
		digit = 4
		)
	legend_text <- names(prop)
	angs <- round(seq(
		0,
		360,
		length.out = 3600),
		digit = 2)
	props <- round(seq(
		0,
		1,
		length.out = 3600),
		digit = 4)
}
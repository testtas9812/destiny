#' @importFrom BiocGenerics updateObject
NULL

#' Update old \link{DiffusionMap}s to a newer version
#' 
#' @param object  A \link{DiffusionMap} object created with an older destiny release
#' @param ...     ignored
#' @param verbose tells what is being updated
#' 
#' @return A \link{DiffusionMap} object that is valid when used with the current destiny release
#' 
#' @export
setMethod('updateObject', 'DiffusionMap', function(object, ..., verbose = FALSE) {
	if (verbose) 
		message("updateObject(object = 'DiffusionMap')")
	
	if (!.hasSlot(object, 'distance'))
		slot(object, 'distance', check = FALSE) <- 'euclidean'
	
	validObject(object)
	object
})
#' Calculate the volume of a shrub
#' 
#' Use the length, width, and height of a shrub to calculate its volume.
#' Returns volume as a floating point number.
#' 
#' @param height height of object
#' @param length length of object
#' @param width width of object
#' @return volume The volume of the shrub (numeric)
#' 
#' @export




calc_shrub_vol <- function(height = 1, length = 1, width = 1){
  volume <- height*length*width
  return(volume)
}
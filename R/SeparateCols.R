#'Separate experimental group columns
#'
#'Uses the experimental group column to create new columns so sensory manipulations
#'can be isolated if desired
#'
#'@param data the data set being utilized
#'@param column the column that is being split
#'@param newname1 the desired name of the column created from the characters to the left of the delimiter aka _
#'@param newname2 the desired name of the column created from the characters to the right of the delimiter aka _
#'@return the two new separated columns
#'
#'@export


separate_cols <- function(data, column, newname1, newname2){
  if(is.data.frame(data) == TRUE){
  final <- separate_wider_delim(data = data, cols = column, delim = " ", names = c(newname1, newname2))
    return(final)
  }else{
    print("Data must be a data frame")
  }
}

#'Check if column contents are numeric
#'
#'Clean data by checking to see if any non-numeric data is in a column where it shouldn't be.
#'
#'@param column the column you wish to clean. Must be selected out of data set and saved to a variable.
#'@return if the column is numeric, the column will be returned
#'
#'@export


non_numeric <- function(column){
 if (length((print(select_if(column, is.numeric)))== 1)){
    return(column)
  } else {
    print("Non-numeric data in column")
  }
}

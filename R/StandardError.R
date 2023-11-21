#' Calculate standard error
#' 
#' This function will calculate the standard error for a selected row.
#' 
#' @param data the data set being utilized
#' @param column the column you want to calculate SE for
#' @return the selected column name followed by the calculated SE
#' 
#' @export


stnd_e <- function(data, column){
  column1 <- data %>% 
    select({{column}})
  if(sum(column1) > 0 ){
  final <- data %>% 
    select(all_of({{column}})) %>% 
    std.error()
  return(final)
  }
}


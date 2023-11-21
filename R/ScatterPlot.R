#'Create a scatter plot
#'
#'This function will create a scatter plot, with the option to separate the data
#'points by another variable
#'
#'@param data the data set being utilized
#'@param x_axis the column you want to use as the independent variable
#'@param y_axis the column you want to use as the dependent variable
#'@param color the column you want to use to subset the points by
#'@return a scatter plot
#'
#'@export


scatter <- function(data, x_axis, y_axis, color = NULL){
  if(is.data.frame(data) == TRUE){
    final <- data %>% 
      ggplot(data, mapping = aes({{x_axis}}, {{y_axis}}, color = {{color}})) +
      geom_point() 
    return(final)
  }else{
    print("Data must be a data frame")
  }
}

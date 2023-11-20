#'Create a histogram with behavioral counts
#'
#'Uses the behavioral count transformed data set to visualize behavioral frequencies
#'between experimental conditions.
#'
#'@param data the data being utilized- needs to be in total count form
#'@param x_axis the column that you want to use as the independent variable
#'@param y_axis the column that you want to use as the dependent variable
#'@param color what column you want the bars separated by
#'@param position what geom_col position you want the bars in
#'@param width the width of the bars
#'@return a histogram of behavioral frequency
#'
#'@export


behavior_hist <- function(data, x_axis, y_axis, color = NULL, position = NULL, width = NULL ) {
  if(is.data.frame(data) == TRUE){
    final <- data %>% 
      ggplot(data, mapping = aes({{x_axis}}, {{y_axis}}, color = {{color}})) +
        geom_col(position = position, width = width)
          return(final)
  }else{
    print("Data must be a data frame")
  }
}

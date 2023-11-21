#'Linear modeling function
#'
#'This function allows you to run a linear model on selected columns within a 
#'data set.
#'
#'@param data the data set being utilized
#'@param dependent_col the response variable
#'@param independent_col the predictor variable
#'@return the linear model summary
#'
#'@export

linearmod <- function(data, dependent_col, independent_col){
    if(is.numeric({{data[[dependent_col]]}})){
      final <- data %>% 
        select(a = quo_name(dependent_col), starts_with(independent_col)) %>% 
        lm(a ~ ., data = .) %>% 
        summary()
      return(final)
    }else{
      print("column must be numeric")
    }
}

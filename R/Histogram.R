#This function will make histogram plots. This is where I will need to insert
#instructions on how to do the count code since we realized writing a function
#for that is not feasible.

#frog_count_data <- frog_data %>% 
# count(experimental_group, behavior, strike_at_fish, strike_at_nothing, sweep, move_towards_prey, move_away_from_prey, frenzy) %>% 
#  select(experimental_group, behavior, n)

#ggplot(data = frog_count_data, mapping = aes(x = behavior, y = n, color = experimental_group)) + geom_col(position = "dodge")

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


#example

#behavior_hist(data= frog_count_data, x_axis = behavior, y_axis = n, color = experimental_group, position = "dodge")

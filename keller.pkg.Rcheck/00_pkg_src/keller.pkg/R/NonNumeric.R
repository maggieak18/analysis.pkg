#This function is a way to clean data by checking to see if any non-numeric data
#is in the columns where it shouldnt be.

```{r}
non_numeric <- function(column){
  if(is.numeric(column)==TRUE){
    return(column)
  } else {
    print("Non-numeric data in column")
  }
}
```

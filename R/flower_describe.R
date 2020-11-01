#' flower describe 
#' 
#' groups data by experimental treatment and returns summary statistics  
#' @param data the data frame to be described 
#' @param groupby the treatment grouping 
#' @param interest the response variable 
#' @keywords describe, summary
#' @export 
#' @examples 
#' flower_describe(flowers, flowers$nitrogen, flowers$inflorescence)


flower_describe <- function(data, groupby, interest){
  
  summary_out <- group_by(data, groupby) %>%
    summarise(
      count = n(),
      mean = mean(interest, na.rm = TRUE),
      sd = sd(interest, na.rm = TRUE))
  
  return(summary_out)
  
}

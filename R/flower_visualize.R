#' flower visualize 
#' 
#' visualizes data as a boxplot  
#' @param data the data frame to be visualized 
#' @param group the predictor variable or the treatment grouping 
#' @param input the response variable 
#' @keywords visualize, boxplot
#' @export 
#' @examples 
#' flower_visualize(flowers$inflorescence, flowers$nitrogen, flowers)


flower_visualize <- function(input, group, data){
  
  v_out <- boxplot(input~group,data=data)

  return(v_out)
}
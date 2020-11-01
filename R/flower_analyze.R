#' flower analyze 
#' 
#' preforms an ANOVA and returns summary of results  
#' @param data the data frame to be described 
#' @param group the predictor variable or the treatment grouping 
#' @param input the response variable 
#' @keywords ANOVA, summary
#' @export 
#' @examples 
#' flower_analyze(flowers$inflorescence, flowers$nitrogen, flowers)



flower_analyze <- function(input, group, data){
  
 analysis_out <- summary(aov(input ~ group, data = data))
  return(analysis_out)
}




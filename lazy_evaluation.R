multiples1 <- function(x, mat, str1, str2) {
  
  matrix.flags <- sapply(x, FUN = is.matrix)
  
  if(!any(matrix.flags)) {
    return(str1)
  }
  
  indexes <- which(matrix.flags)
  counter <- 0
  
  result <- list()
  
  for (i in indexes) {
    temp <- x[[i]]
    
    if (ncol(temp)==nrow(mat)) {
      counter <- counter+1
      result <- temp%*%mat 
    }
  }
  if(counter == 0){
    return(str2)
  } else{
    return(result)
  }
}

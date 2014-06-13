

#' Fuzzy intersection of item loadings on personality domains
#' 
#' Given a set of items loadings, calculate the minimum
#' loading for each item on all the dimensions.
#' 
#' @param ... Vectors item loadings.
#' @export
fuzzy_intersect <- function(...) {
  dimensions <- list(...)

  # get all item names
  items <- unique(unlist(lapply(dimensions, names)))
  min_loadings <- numeric(length(items))
  names(min_loadings) <- items

  # for each item
  for(i in items) {
    # pull loading out of each dimension
    l <- sapply(dimensions, function(x) x[i])
    # 
    min_index <- which(abs(l) == min(abs(l), na.rm=T))
    min_loadings[i] <- l[min_index]
  }

 fuzzy_loadings <- min_loadings[order(abs(min_loadings), decreasing=TRUE)]

 return(fuzzy_loadings) 


}



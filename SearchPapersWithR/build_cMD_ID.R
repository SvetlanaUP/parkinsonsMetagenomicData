getCMD_code <- function(queriedDoiMessage){
  
  lastName <- tryCatch(queriedDoiMessage$author[[1]]$family, error = function(e) return("Error"))
  firstName <- tryCatch(queriedDoiMessage$author[[1]]$given |> strsplit(split = " ") |> pluck(1) |> substr(1, 1) |> paste(collapse = ""), error = function(e) return("Error"))
  year <- tryCatch(queriedDoiMessage$published$`date-parts` |> unlist() |> pluck(1), error = function(e) return("Error"))
  
  return(paste0(lastName, firstName, "_", year))
}

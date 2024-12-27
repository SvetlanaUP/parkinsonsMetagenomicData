lookup_on_PubMed <- function(queryText) {
  
  library(RISmed)
  
  query <- EUtilsSummary(queryText)
  records <-  EUtilsGet(query, )
  
  publications.tibble <- tibble(
    PMID = PMID(records), 
    Title = RISmed::AbstractText(records)) |>
    mutate(DOI = paste0(
      "https://doi.org/",
      rcrossref::id_converter(PMID, type = "pmid")$records$doi
    ))
  
  return(publications.tibble)
  
}
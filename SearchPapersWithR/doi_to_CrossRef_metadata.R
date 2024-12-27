doi_to_CrossRef_metadata <- function(doi) {
  library(tidyverse)
  library(httr2)
  
  
  # define base url
  base_url <- "https://api.crossref.org/"
  endpoint <- "works"
  
  my_table.list <- lapply(dois, function(doi.i)
    request(base_url) |>
      req_url_path_append(endpoint, doi.i) |>
      req_url_query(mailto = "giacomo.antonello@sph.cuny.edu", .multi = "pipe") |>
      req_perform() |>
      resp_body_json())
  
  publications_metadata.tibble <- lapply(my_table.list, function(publ) {
    publ$message |>
      {
        \(y) {
          tibble(
            "cMD_code" = getCMD_code(y),
            "date" = y |> pluck("published") |> pluck("date-parts") |> unlist() |> paste(collapse = "-"),
            "doi" = paste0("https://doi.org/", y |> pluck("DOI")),
            "type" = y |> pluck("type") |> unlist(),
            "publisher" = y |> pluck("publisher"),
            "journal" = y |> pluck("container-title") |> pluck(1),
            "First_Auth" = y |> pluck("author") |> {
              \(authlist) {
                paste(authlist[[1]][["family"]], authlist[[1]][["given"]], sep = ", ")
              }
            }(),
            "Last_Auth" = y |> pluck("author") |> {
              \(authlist) {
                paste(authlist[[length(authlist)]][["family"]], authlist[[length(authlist)]][["given"]], sep = ", ")
              }
            }(),
            "Title" = y |> pluck("title") |> pluck(1),
          )
        }
      }()
  }) |>
    bind_rows()
  
  return(publications_metadata.tibble)
}

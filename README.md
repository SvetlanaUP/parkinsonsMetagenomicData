# parkinsonsMetagenomicData

This repository keeps track of the datasets found in the literature and the efforts to obtain them. So far, I found the following datasets that could be of interests for the ASAP microbiome analytics core. The strategy to find them so far was to review the results of the following [Google scholar search](https://scholar.google.com/scholar?hl=it&as_sdt=0,33&q=“metagenomic*”+AND+"parkinson*"). In the future, a double check by other researchers on different paper browsers (e.g. `Scopus`, `WebOfScience`) would strengthen the systematicity.

## R tool to search papers and prepare basic metadata

This tool should take a search query, in my case 
`Parkinson* AND microb* AND shotgun`, and return a table of papers from different
sources, which are then merged based on having the most metadata associated.
The way it should work is as follows

```
SearchPapersWithR/main.R -q "Parkinson* AND microb* AND shotgun" -o "queriedPapers.tsv"
```

And the steps should be:

  1. Perform the query on several databases
    
    | Database          | Implemented | Function            |
    | ----------------- | ----------- | ------------------- |
    | PubMed            | Yes         | lookup_on_PubMed.R  |
    | Scopus            | No          | None                |
    | Google Scholar    | No          | None                |
    | MedRxiv/BioRxiv   | No          | None                |

    
  2. Search metadata using `CrossRef` based on available unique IDs
    
    * PMID
    
    * DOI
    
  3. Search NCBI for Associated datasets
    
    * SRA
    
    * BioProject
  
  4. Generate a `curatedMetagenomicData`-like study/dataset identifier
  using the utility function SearchPapersWithR/build_cMD_ID.R
  
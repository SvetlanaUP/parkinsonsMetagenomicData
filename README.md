# parkinsonsMetagenomicData
This repository keeps track of the datasets found in the literature and the efforts to obtain them. So far, I found the following datasets that could be of interests for the ASAP microbiome analytics core. The strategy to find them so far was to review the results of the following [Google scholar search](https://scholar.google.com/scholar?hl=it&as_sdt=0,33&q=“metagenomic*”+AND+"parkinson*"). In the future, a double check by other researchers on different paper browsers (e.g. `Scopus`, `WebOfScience`) would strengthen the systematicity.

# Metadata request attempts

So far, the request of metadata has been piloted on only 3 research groups, with no success. I sent the emails from my private email account, Cc-ing Levi, to the corresponding author, and when not the same, to the last author too. This was the email template, which I adapted to each specific case:

```
Dear <corresponding author>,

I am writing on behalf of the Curated Metagenomic Data (cMD) project (Pasolli et al., 2017) led by prof Levi Waldron.
We are currently working on a new data release focused on Parkinson’s disease in a project funded by the "Aligning Science Across Parkinson" (ASAP) network and the Michael J. Fox foundation.

We appreciated reading your contribution in <Journal Name> this year (<doi link>) and for making the sequencing data publicly available. We would like to include your data set in our next cMD release. To do so, we would need have access to individual level metadata. The bare minimum is disease/health status, but age and sex are important as well.

Ideally, it would be best if you could provide us with the full data set you worked with, both for the sake of completeness, reusability, and reproducibility of data, not to mention the higher visibility your contribution would gain.

I am looking forward to discussing the details together.

Best regards
Giacomo Antonello, PhD
```

## Nov 2024, week 4

A new email version has been developed:

```
Dear Dr. **Last Name**,
I am working on a project funded by the "Aligning Science Across Parkinson" (ASAP) network and the Michael J. Fox foundation to build a harmonized resource of all publicly available metagenomic data available for the study of the gut microbiome in Parkinson's disease. We are following the approach of the curatedMetagenomicData (cMD) initiative (Pasolli et al., 2017) to lower barriers to reuse and integrated analysis by the entire Parkinson's Disease research community to better understand the underlying causes of the disease.
 
To succeed, we need access to raw sequencing data and individual participant metadata, including the datasets you have generated **https://doi.org/link**. We will uniformly process raw data through the latest version of bioBakery (https://huttenhower.sph.harvard.edu/biobakery_workflows/), and standardize participant data across all studies. The minimum data we need in order to include your study is the raw reads and Parkinson's disease/health status, but age and sex are important as well. Ideally, it would be best to share the full data set you worked with, for the sake of completeness, reusability, and reproducibility of results.
 
I am confident you will understand the importance of this harmonization effort and will be part of it as a data contributor. I'm looking forward to discussing details, including addressing any limitations or concerns you have about data sharing.
 
Giacomo Antonello, PhD 
Microbiome Analytics Core (MAC), ASAP Network
MAC GitHub: https://github.com/ASAP-MAC
Book a meeting with someone at MAC: https://outlook.office365.com/book/ASAPMAC@CUNY907.onmicrosoft.com/
```

Metadata retrieval has been attempted using a handy manual search tool called
[SRA-explorer](https://sra-explorer.info/#), which provides a nice interface
to download metadata and create wget downloading commands for FASTQ files.

# Dec 2024, week 1

## Expanded search for datasets

Since we are having trouble with responses by authors, we decided to expand 
our search towards other -omic data, which would still make a valuable addition
to the field of PD. Our attention will focus first on **16S** amplicon sequencing.
For this search, we created a search on `BugSigDB` for studies on PD in *H. sapiens*
with **Condition: parkinson's disease | parkinsonism | parkinson | parkinson disease**.

Whenever a shotgun study is found that is not yet in `parkinson_shotgun_datasets.tsv`, 
it will be added to that file. 16S studies will be annotated with the same logic 
in a different file, named `parkinson_16S_datasets.tsv`. My week's efforts will
mostly be around curating these datasets.
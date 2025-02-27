# Data Retrieval

## MetaPlAn4 Output
`scripts/` contains two scripts used to download and merge MetaPhlAn4 output for processed shotgun samples.

`retrieve.sh` uses the `gcloud` command-line tool to pull gzipped taxonomic abundance, taxonomic abundance with unknown fraction estimation, and viral clustering files from the Google Cloud Bucket. It takes a file from `input_tables` as the first command-line argument.

`combine_all.sh` then uses the `metaphlan_merge_tables.py` utility from MetaPhlAn4 to merge the taxonomic abundance and taxonomic abundance with unknown fraction estimation files into one single TSV for each file type.

The resulting files, `merged_bugs.tsv` and `merged_unknown.tsv`, are stored on OneDrive at the moment and can be accessed here:

* [merged_bugs.tsv](https://cuny907-my.sharepoint.com/:u:/g/personal/kaelyn_long26_login_cuny_edu/EeK5b5nTW1RAgTR5_z0x2aABxfBohtEKacpUyRzvmsgBhg?e=LziEcp)
* [merged_unknown.tsv](https://cuny907-my.sharepoint.com/:u:/g/personal/kaelyn_long26_login_cuny_edu/EYim3U6cvyZPi9-GrCi-pZsB0vuimarGY-81kK49v0mTyg?e=ZaaCxp)

Note: both scripts make use of my personal workspace setup at the moment, they will be adapted to be more reproducible in the future.

## Sample Metadata
`scripts/` contains the script `merge_metadata.R`, which is used to combine metadata from study metadata tables and SRA accession lists, both curated and uncurated.

The output file, `merged_metadata.csv` contains curated and uncurated metadata for processed shotgun samples. Uncurated metadata columns are prefixed with "uncurated_".

Note: `merge_metadata.R` again makes use of my personal workspace setup and will be adapted to be more reproducible in the future. Source metadata will also be added and organized.

## Study Information
`processed_datasets.tsv` is a copy of `/parkinson_shotgun_datasets.tsv` filtered to only include datasets that have been processed.
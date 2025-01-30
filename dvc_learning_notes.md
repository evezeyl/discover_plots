# Dvc learning notes

# Process simple

1. activate the virtual environment in the repo (alike git activation)

```bash
dvc init
```

- creates files : .dvc/config, .dvc/.gitignore and .dvcignore
  Those can be added to git for tracking

2. add files to git to allow cooperation for tracking
   Those files are tracked on git -> add and commit
   .dvcignore is same role as gitignore: ignoring tracking things but for dvc; dvc/config is the configuration file for dvc; and .dvc/.gitignore is the gitignore file for dvc (avoid to track data)

3. add data to dvc = creates the tracking files

```bash
 dvc add data/STEC_isolate_inventory_WGS_Updated_20240205.xlsx
```

Tell you how to monitor changes: by `git add data/STEC_isolate_inventory_WGS_Updated_20240205.xlsx.dvc`
the metadata (has data) is the one to be tracked 

- [ ] unclear here in their way ....I might have skipped a step 


# Notes

Data

- stored in the `cache` -> see **Large Dataset Optimization** -> possible changing the location of the cache
- data never pushed in a git repo -> its the "checksum file/links to data" that is pushed to git : data is not tracked on git its the hash of the data that is tracked
- data stored in the caches are renamed and reorganized (so not same structure) -> need to interact with dvc to access the data (based on hashes of the data)

Hashes

- usually md5
- same content and different names -> one copy - same hash

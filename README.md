# DB-Project
## Environment
- Python 3
- Jupyter Notebook
- Run pip install -r requirements.txt for libraries
## Build
- Step 0: Clone this repo
- Step 1: Download datasets
  - http://geodash.vpd.ca/opendata/crimedata_download/crimedata_csv_all_years.zip
  - https://www.denvergov.org/media/gis/DataCatalog/crime/csv/crime.csv
- Step 2: Rename
  - For Vancouver: Unzip crimedata_csv_all_years.zip, rename crimedata_csv_all_years.csv to vancouvercrime.csv
  - For Denver: Rename crime.csv to denvercrime.csv
- Step 3: Place 2 CSV datasets to ./Data
- Step 4: Run Date Event Preprocess.ipynb, build date dimension and event dimension
- Step 5: Run files
  - Run Denver Preprocess.ipynb for dimensions related to Denver
  - Run Vancouver Preprocess.ipynb for dimensions related to Vancouver
- Step 6: Run Merge Process.ipynb to combine Vancouver data with Denver data, and generate crime dimension, location dimension and fact table
- Step 7: All resulting data in ./Dimensions, run script in ./sql if needed
## Data source
- Data for population 
  - https://www.macrotrends.net/cities/20404/vancouver/population
  - https://www.macrotrends.net/cities/22972/denver/population
- Data for CSI weight
  - https://www150.statcan.gc.ca/n1/pub/85-004-x/2009001/t001-eng.htm
- CSI Calculation fomula
  - https://www.researchgate.net/publication/309418379_An_Organized_Crime_Severity_Index_Discussion_of_a_Proposed_Methodology#pf8

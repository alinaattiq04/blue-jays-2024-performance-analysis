# blue-jays-2024-performance-analysis
End-to-end sports analytics project analyzing Toronto Blue Jays 2025 performance drivers using Python, SQL, and Tableau.
How to reproduce
Download the raw dataset(s) into data/raw/:
bluejays_batting_2024_raw.csv (Baseball-Reference export)

Run notebooks in order:
notebooks/01_data_audit.ipynb (checks shape, columns, missingness, data types)
notebooks/02_data_cleaning.ipynb (removes team totals row, cleans player names, resolves position fields)

Output files generated:
data/processed/tor_hitters_2025_clean.csv

Project structure
data/raw/: original downloads (unchanged)
data/processed/: cleaned analysis-ready tables
notebooks/: step-by-step workflow
sql/: table creation + analysis queries (next step)
reports/: written findings and saved figures
dashboard/: Tableau link + screenshot

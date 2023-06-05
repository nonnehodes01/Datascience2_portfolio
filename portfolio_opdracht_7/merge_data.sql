--- Merge rds data
SELECT *
INTO merged_rds
FROM merged_flu_rds
UNION ALL
SELECT *
FROM merged_dengue_rds;


--- Merge csv data
SELECT *
INTO merged_csv
FROM merged_flu_csv
UNION ALL
SELECT *
FROM merged_dengue_csv;




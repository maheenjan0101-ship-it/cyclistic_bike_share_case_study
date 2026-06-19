-- Consolidating 12 months of external CSV tables into a single master raw dataset  
CREATE OR REPLACE TABLE `nifty-motif-496213-s3.cyclistic_tripdata.combined_trips_master` AS ( 
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_07`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_08`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_09`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_10`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_11`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2025_12`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_01`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_02`  
UNION ALL  
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_03`  
UNION ALL 
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_04`  
UNION ALL 
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_05`  
UNION ALL 
SELECT * FROM `nifty-motif-496213-s3.cyclistic_tripdata.tripdata_2026_06` );  

-- Creating the production-ready analytical table with engineered features and cleaning filters  
CREATE OR REPLACE TABLE `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final` AS (  
SELECT  
*,  -- Feature Engineering: Calculate trip duration in minutes  
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length,  -- Feature Engineering: Extract day of the week (e.g., 'Sunday', 'Monday')  
FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,  -- Feature Engineering: Extract month name (e.g., 'July', 'August')  
FORMAT_TIMESTAMP('%B', started_at) AS month_name  
FROM `nifty-motif-496213-s3.cyclistic_tripdata.combined_trips_master`  
WHERE  -- Quality Filter: Eliminate records with missing structural data  
start_station_name IS NOT NULL  -- Quality Filter: Eliminate trips less than 1 minute (false starts)  
AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1  -- Quality Filter: Eliminate trips longer than 24 hours (system errors/theft)  
AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 1440 ); 

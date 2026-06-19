-- Aggregating for dashboard performance and cleaning station naming conventions
CREATE OR REPLACE TABLE `nifty-motif-496213-s3.cyclistic_tripdata.tableau_final_master` AS 
SELECT  
member_casual, 
day_of_week, 
month_name, 
rideable_type, -- Cleans up missing station names into a professional category 
CASE  
WHEN start_station_name IS NULL OR start_station_name = ' THEN 'On-Street Unlock' 
ELSE start_station_name  
END AS start_station_name, 
COUNT(*) AS total_trips, 
ROUND(AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)), 2) AS average_ride_length 
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final` 
GROUP BY  
member_casual,  
day_of_week,  
month_name,  
rideable_type,  
start_station_name;

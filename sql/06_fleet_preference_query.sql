-- Executed query to analyze the interaction between user type, rideable type, volume, and duration: 
SELECT 
member_casual, 
rideable_type, 
COUNT(*) AS total_trips, 
ROUND(AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)), 2) AS avg_duration_mins 
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final` 
GROUP BY member_casual, rideable_type 
ORDER BY member_casual, total_trips DESC; 

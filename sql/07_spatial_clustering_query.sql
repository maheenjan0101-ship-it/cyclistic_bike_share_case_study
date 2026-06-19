-- Executed query to isolate the absolute top-performing summer origin points for casual riders:  
SELECT 
start_station_name, 
COUNT(*) AS total_summer_trips 
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final` 
WHERE member_casual = 'casual' 
AND month_name IN ('June', 'July', 'August') 
AND start_station_name IS NOT NULL 
AND start_station_name != ' 
GROUP BY start_station_name 
ORDER BY total_summer_trips DESC 
LIMIT 3;

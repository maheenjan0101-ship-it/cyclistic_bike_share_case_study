-- Executed query to track monthly volume fluctuations and duration elasticity across the 12-month timeline: 
SELECT  
member_casual,  
month_name,  
COUNT(*) AS total_trips,  
ROUND(AVG(ride_length), 2) AS average_ride_length_minutes  
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final`  
GROUP BY member_casual, month_name  
ORDER BY member_casual, total_trips DESC;

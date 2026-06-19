-- Executed query to isolate trip distribution and duration by day of the week: 
SELECT  
member_casual,  
day_of_week,  
COUNT(*) AS total_trips,  
ROUND(AVG(ride_length), 2) AS average_ride_length_minutes  
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final`  
GROUP BY member_casual, day_of_week  
ORDER BY member_casual, total_trips DESC;

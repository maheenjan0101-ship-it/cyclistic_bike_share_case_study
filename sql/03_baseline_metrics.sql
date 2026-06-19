-- Executed query to calculate total trip volumes and average trip lengths by user segment: 
SELECT  
member_casual,  
COUNT(*) AS total_trips,  
ROUND(AVG(ride_length), 2) AS average_ride_length_minutes  
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final`  
GROUP BY member_casual;

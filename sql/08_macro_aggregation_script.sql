/* A specialized business intelligence optimization script was written in BigQuery
to compress macro behavior data across user classifications, weekdays, and months:*/
CREATE OR REPLACE TABLE `clistic-445214.cyclistic_tripdata.tableau_summary` AS ( 
SELECT  
member_casual,  
day_of_week,  
month_name,  
COUNT(*) AS total_trips,  
ROUND(AVG(ride_length), 2) AS average_ride_length 
FROM `nifty-motif-496213-s3.cyclistic_tripdata.clean_trips_final` 
GROUP BY member_casual, day_of_week, month_name 
);

SELECT *
FROM citi_bikes_db.citi_bikes;

-- What are the most popular pick-up locations across the city for NY Citi Bike rental?
SELECT DISTINCT start_station_name, count(*) as num
from citi_bikes_db.citi_bikes
group by start_station_name
order by num desc
limit 5;

-- How does the average trip duration vary across different age groups?
SELECT age_groups, ROUND(AVG(trip_duration)) AS average_duration
FROM citi_bikes_db.citi_bikes
GROUP BY age_groups
ORDER BY 2 DESC;

-- Which age group rents the most bikes?
SELECT age_groups, COUNT(bike_id) as num_of_bikes
FROM citi_bikes_db.citi_bikes
GROUP BY age_groups
ORDER BY 2 DESC;

-- How does bike rental vary across the two user groups (one-time users vs long-term subscribers) on different days of the week?
SELECT DISTINCT user_type, weekday, COUNT(bike_id) as bike_rental
FROM citi_bikes_db.citi_bikes
GROUP BY user_type, weekday
ORDER BY user_type desc;

-- Does user age impact the average bike trip duration?
SELECT age
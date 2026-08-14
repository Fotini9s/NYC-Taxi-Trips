# H1: Fare vs Demand
# How do we check this?
# Relevant columns:
# pickup_hour, average fare_amount, average trip_duration_seconds
SELECT
  pickup_hour,
  ROUND(AVG(fare_amount), 2) AS avg_fare_amount,
  ROUND(AVG(trip_duration_seconds)/60, 2) AS avg_trip_duration_minutes,
  COUNT(*) AS number_of_trips
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`
GROUP BY
  pickup_hour
ORDER BY
  pickup_hour;

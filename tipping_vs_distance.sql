SELECT
  CASE 
    WHEN trip_distance < 1 THEN '1. Under 1mi'
    WHEN trip_distance < 3 THEN '2. 1-3mi'
    WHEN trip_distance < 6 THEN '3. 3-6mi'
    WHEN trip_distance < 10 THEN '4. 6-10mi'
    ELSE '5. 10mi+'
  END AS distance_bucket,
  ROUND(AVG(tip_pct) * 100, 2) AS avg_tip_pct,
  ROUND(AVG(tip_amount), 2) AS avg_tip_amount,
  ROUND(AVG(fare_amount), 2) AS avg_fare_amount,
  COUNT(*) AS total_trips
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`
WHERE
  payment_type_label = 'Credit Card'
GROUP BY
  distance_bucket
ORDER BY
  distance_bucket;

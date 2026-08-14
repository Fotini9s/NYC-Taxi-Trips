CREATE OR REPLACE TABLE `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data` AS
SELECT payment_type
  *,
  CASE WHEN
  payment_type = '1' THEN 'Credit Card' WHEN
  payment_type = '2' THEN 'Cash' WHEN
  payment_type = '3' THEN 'No charge' WHEN
  payment_type = '4' THEN 'Dispute' WHEN
  payment_type = '5' THEN 'Unknown' WHEN
  payment_type = '6' THEN 'Voided trip'
  END AS payment_type_label
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`

# Create payment_type_label column
# This step adds readable labels to the numeric payment_type values
# Relevant columns:
# payment_type, payment_type_label

CREATE OR REPLACE TABLE `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data` AS
SELECT
  *,
  CASE
    WHEN payment_type = '1' THEN 'Credit Card'
    WHEN payment_type = '2' THEN 'Cash'
    WHEN payment_type = '3' THEN 'No charge'
    WHEN payment_type = '4' THEN 'Dispute'
    WHEN payment_type = '5' THEN 'Unknown'
    WHEN payment_type = '6' THEN 'Voided trip'
  END AS payment_type_label
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`;

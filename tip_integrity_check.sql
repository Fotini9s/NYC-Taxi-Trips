#Inspect cash vs credit card tip tracking
#Cash trips with recorded tips (only few)

SELECT
  payment_type_label,
  COUNT(*) AS tracked_cash_payments
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`
WHERE
  tip_amount != 0.0
  AND payment_type_label = 'Cash'
GROUP BY
  payment_type_label;

#Cash trips with zero recorded tips (majority)
SELECT
  payment_type_label,
  COUNT(*) AS untracked_cash_payments
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`
WHERE
  tip_amount = 0.0
  AND payment_type_label = 'Cash'
GROUP BY
  payment_type_label;

#Total credit card trips (used for tipping analysis)
SELECT
  COUNT(*) AS count_credit_card
FROM
  `wagon-bootcamp-497711.nyc_taxi_trips.nyc_taxi_trips_clean_data`
WHERE
  payment_type_label = 'Credit Card';

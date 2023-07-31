CREATE OR REPLACE TABLE `da-practise-390405.bike_trip.cleaned_table` AS
SELECT DISTINCT --Remove duplicate
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  SAFE_CAST(start_lat AS FLOAT64) AS start_lat, --Make sure it is FLOAT data type
  SAFE_CAST(start_lng AS FLOAT64) AS start_lng, 
  SAFE_CAST(end_lat AS FLOAT64) AS end_lat,
  SAFE_CAST(end_lng AS FLOAT64) AS end_lng,
  -- To standardize the member_casual column incase theres multiple version of 'member' or 'casual'
  CASE
    WHEN member_casual IS NOT NULL THEN
      CASE
        WHEN LOWER(member_casual) IN ('member', 'registered', 'registered member') THEN 'member'
        WHEN LOWER(member_casual) IN ('casual', 'non-member') THEN 'casual'
        ELSE 'Unknown'
      END
    ELSE 'Unknown'
  END AS member_casual

FROM `da-practise-390405.bike_trip.combined_table`
WHERE started_at IS NOT NULL  -- exclude all row that contain NULL
  AND ended_at IS NOT NULL
  AND start_lat IS NOT NULL
  AND start_lng IS NOT NULL
  AND end_lat IS NOT NULL
  AND end_lng IS NOT NULL
  AND ride_id IS NOT NULL
  AND rideable_type IS NOT NULL
  AND start_station_name IS NOT NULL
  AND start_station_id IS NOT NULL
  AND end_station_name IS NOT NULL
  AND end_station_id IS NOT NULL;

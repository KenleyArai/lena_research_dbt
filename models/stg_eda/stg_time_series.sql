SELECT
    {{ lower('pkey') }} AS eda_subject_id,
    time                AS timestamp,
    series_type,
    data
FROM
    {{ source('research', 'time_series') }}
SELECT
    pkey::LOWER AS eda_subject_id,
    time        AS timestamp,
    series_type,
    data
FROM
    {{ source('research', 'ppt_pairs') }}
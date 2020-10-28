SELECT
    participant_0::LOWER AS eda_subject_id_0,
    participant_1::LOWER AS eda_subject_id_1,
    series_type,
    session_number,
    dynamic_time_warp_square,
    dynamic_time_warp_absolute
FROM
    {{ source('research', 'ppt_pairs') }}
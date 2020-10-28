SELECT
    {{ lower('participant_0') }} AS eda_subject_id_0,
    {{ lower('participant_1') }} AS eda_subject_id_1,
    series_type,
    session_number,
    dynamic_time_warp_square,
    dynamic_time_warp_absolute
FROM
    {{ source('research', 'dynamic_time_warped') }}
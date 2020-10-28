SELECT
    source_relation,
    eda_subject_id,
    series_type,
    epoch,
    timestamp,
    value,
    delta,
    mean,
    median,
    samples,
    p_p,
    is_quiet_period
FROM
    {{ ref('stg_raw_time_series') }}
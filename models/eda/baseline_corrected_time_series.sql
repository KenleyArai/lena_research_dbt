WITH quiet_period_avg AS
(
    SELECT
        eda_subject_id,
        channel,
        AVG(mean) AS channel_avg
    FROM
        {{ ref('raw_time_series') }}
    WHERE
        is_quiet_period IS TRUE
    {{ dbt_utils.group_by(2) }}
),
add_base_line_correction AS
(
    SELECT
        rts.eda_subject_id,
        rts.epoch,
        rts.series_type,
        (rts.mean - qpa.channel_avg)::FLOAT AS baseline_correction_avg
    FROM
        {{ ref('raw_time_series') }} AS rts
            JOIN quiet_period_avg AS qpa ON
                rts.eda_subject_id = qpa.eda_subject_id AND
                rts.channel = qpa.channel
    WHERE
        rts.is_quiet_period IS FALSE
),
add_prev_baseline_correction AS
(
    SELECT
        eda_subject_id,
        epoch,
        series_type,
        baseline_correction_avg,
        LAG(baseline_correction_avg) OVER (PARTITION BY eda_subject_id, series_type ORDER BY epoch) AS prev_baseline_correction_avg
    FROM add_base_line_correction
),
add_baseline_percent_change AS
(
    SELECT
        eda_subject_id,
        epoch,
        series_type,
        baseline_correction_avg,
        prev_baseline_correction_avg,
        (prev_baseline_correction_avg - baseline_correction_avg)::FLOAT/prev_baseline_correction_avg::FLOAT AS percent_change_from_baseline
    FROM
        add_prev_baseline_correction
)

SELECT
    *
FROM
    add_baseline_percent_change
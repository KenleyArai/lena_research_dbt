WITH quiet_period_avg AS
(
    SELECT
        eda_subject_id,
        series_type,
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
        (rts.mean - qpa.channel_avg)/rts.mean AS baseline_correction
    FROM
        {{ ref('raw_time_series') }} AS rts
            JOIN quiet_period_avg AS qpa ON
                rts.eda_subject_id = qpa.eda_subject_id AND
                rts.series_type = qpa.series_type
    WHERE
        rts.is_quiet_period IS FALSE
),
add_base_line_percent_change AS
(
    SELECT
        eda_subject_id
        epoch,
        series_type,
        baseline_correction,
        (baseline_correction - LAG(baseline_correction) OVER (PARTITION BY eda_subject_id, series_type ORDER BY epoch))/LAG(baseline_correction) OVER (PARTITION BY eda_subject_id, series_type ORDER BY epoch) AS baseline_percent_change
    FROM add_base_line_correction
)

SELECT
    *
FROM
    quiet_period_avg
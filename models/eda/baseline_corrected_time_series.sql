WITH quiet_period_avg AS
(
    SELECT
        eda_subject_id,
        channel,
        AVG(value) AS quiet_period_channel_avg
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
        (rts.mean - qpa.quiet_period_channel_avg)::FLOAT/rts.mean AS perc_diff_from_qp
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
        perc_diff_from_qp,
        LAG(perc_diff_from_qp) OVER (PARTITION BY eda_subject_id, series_type ORDER BY epoch) AS prev_diff
    FROM add_base_line_correction
),
add_percent_change AS
(
    SELECT
        eda_subject_id,
        epoch,
        series_type,
        perc_diff_from_qp,
        prev_diff,
        perc_diff_from_qp as baseline_correction
    FROM
        add_prev_baseline_correction
)

SELECT
    *
FROM
    add_percent_change
WITH min_bl AS
(
    SELECT
        eda_subject_id,
        series_type,
        MIN(baseline_correction) AS min_bl_correction
    FROM
        {{ ref('baseline_corrected_time_series') }}
    {{ dbt_utils.group_by(2) }}
),
max_bl AS
(
    SELECT
        eda_subject_id,
        series_type,
        MAX(baseline_correction) AS max_bl_correction
    FROM
        {{ ref('baseline_corrected_time_series') }}
    {{ dbt_utils.group_by(2) }}
),
normalized_bl AS
(
    SELECT
        blc.epoch,
        blc.eda_subject_id,
        blc.series_type,
        blc.baseline_correction,
        (blc.baseline_correction - min_bl.min_bl_correction)/(max_bl.max_bl_correction - min_bl.min_bl_correction) AS normalized
    FROM
        {{ ref('baseline_corrected_time_series') }} AS blc
            JOIN min_bl ON
                blc.eda_subject_id = min_bl.eda_subject_id AND
                blc.series_type = min_bl.series_type
            JOIN max_bl ON
                blc.eda_subject_id = max_bl.eda_subject_id AND
                blc.series_type = max_bl.series_type
),
normalized_bl_stats AS
(
    SELECT
        eda_subject_id,
        series_type,
        AVG(normalized) AS avg_normalized_bl,
        STDDEV(normalized) AS stddev_normalized_bl
    FROM
        normalized_bl
    {{ dbt_utils.group_by(2) }}
)

SELECT
    nbl.*,
    (nbl.normalized - nbls.avg_normalized_bl)/nbls.stddev_normalized_bl AS normalized_then_standardized
FROM
    normalized_bl AS nbl
        JOIN normalized_bl_stats nbls ON
            nbl.eda_subject_id = nbls.eda_subject_id AND
            nbl.series_type = nbls.series_type

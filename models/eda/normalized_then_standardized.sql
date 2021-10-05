WITH min_bl AS
(
    SELECT
        experiment_id,
        MIN(baseline_correction) AS min_bl_correction
    FROM
        {{ ref('baseline_corrected_time_series') }}
    {{ dbt_utils.group_by(1) }}
),
max_bl AS
(
    SELECT
        experiment_id,
        MAX(baseline_correction) AS max_bl_correction
    FROM
        {{ ref('baseline_corrected_time_series') }}
    {{ dbt_utils.group_by(1) }}
),
normalized_bl AS
(
    SELECT
        blc.*,
        (blc.baseline_correction - min_bl.min_bl_correction)/(max_bl.max_bl_correction - min_bl.min_bl_correction) AS normalized
    FROM
        {{ ref('baseline_corrected_time_series') }} AS blc
            JOIN min_bl ON
                blc.experiment_id = min_bl.experiment_id
            JOIN max_bl ON
                blc.experiment_id = max_bl.experiment_id
),
normalized_bl_stats AS
(
    SELECT
        experiment_id,
        AVG(normalized) AS avg_normalized_bl,
        STDDEV(normalized) AS stddev_normalized_bl
    FROM
        normalized_bl
    {{ dbt_utils.group_by(1) }}
)

SELECT
    nbl.*,
    (nbl.normalized - nbls.avg_normalized_bl)/nbls.stddev_normalized_bl AS normalized_then_standardized
FROM
    normalized_bl AS nbl
        JOIN normalized_bl_stats nbls ON
            nbl.experiment_id = nbls.experiment_id 

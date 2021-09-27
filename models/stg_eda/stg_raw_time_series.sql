SELECT
    {# Placeholder code for clearing primary keys
        {{
            dbt_utils.surrogate_key(
                                        [
                                            lower(get_raw_subject_id_from_filename_source('_dbt_source_relation')),
                                            get_raw_series_type_from_filename_relation('_dbt_source_relation'),
                                            '"Epoch"'
                                        ]
                                    )
        }}                                                                               AS raw_time_series_id,
    #}
    {{- lower(get_raw_subject_id_from_filename_source('_dbt_source_relation')) -}}    AS eda_subject_id,
    {{- lower(get_raw_series_type_from_filename_relation('_dbt_source_relation')) -}} AS series_type,
    CASE
        WHEN _dbt_source_relation ILIKE '%S1%'
                THEN 's1'
        WHEN _dbt_source_relation ILIKE '%S2%'
                THEN 's2'
        WHEN _dbt_source_relation ILIKE '%S1%'
                THEN 's1'
        WHEN _dbt_source_relation ILIKE '%S2%'
                THEN 's2'
    END                                                                              AS channel,
    "Epoch"                                                                           AS epoch,
    "Time"                                                                            AS timestamp,
    "Value (CH 1)"                                                                    AS value,
    "Delta (CH 1)"                                                                    AS delta,
    "Mean (CH 1)"                                                                     AS mean,
    "Median (CH 1)"                                                                   AS median,
    "Samples (CH 1)"                                                                  AS samples,
    "P-P (CH 1)"                                                                      AS p_p,
    _dbt_source_relation                                                              AS source_relation,
    CASE
        WHEN _dbt_source_relation ILIKE '%qp_bl%'
            THEN TRUE
        ELSE FALSE
    END                                                                               AS is_quiet_period
FROM
    {{ ref('stg_raw_union') }}

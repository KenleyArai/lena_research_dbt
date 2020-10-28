{% set relations = dbt_utils.get_relations_by_pattern('dbt_seed', 'P%EDA') %}

WITH all_raw_data AS
(
    {{
        dbt_utils.union_relations(relations)
    }}
)

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
    {{- get_raw_series_type_from_filename_relation('_dbt_source_relation') -}}        AS series_type,
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
    all_raw_data

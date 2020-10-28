{{ config(materialized="table") }}

{% set relations = dbt_utils.get_relations_by_pattern('dbt', 'P%EDA') %}

WITH all_raw_data AS
(
    {{
        dbt_utils.union_relations(relations)
    }}
),
add_extracted_features AS
(
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
        _dbt_source_relation,
        {{- lower(get_raw_subject_id_from_filename_source('_dbt_source_relation')) -}}    AS eda_subject_id,
        {{- get_raw_series_type_from_filename_relation('_dbt_source_relation') -}}        AS series_type,
        "Epoch"                                                                           AS epoch,
        "Time"                                                                            AS timestamp,
        "Value (CH 1)"                                                                    AS value,
        "Delta (CH 1)"                                                                    AS delta,
        "Mean (CH 1)"                                                                     AS mean,
        "Median (CH 1)"                                                                   AS median,
        "Samples (CH 1)"                                                                  AS samples,
        "P-P (CH 1)"                                                                      AS p_p
    FROM
        all_raw_data
)

SELECT
    *
FROM
    add_extracted_features

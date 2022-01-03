{{config(materialized = "table")}}

{% set relations = dbt_utils.get_relations_by_pattern('dbt_seed', 'PB%EDA') %}

{{
    dbt_utils.union_relations(relations)
}}
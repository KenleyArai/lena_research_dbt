{{config(materialized = "table")}}

select
    {{dbt_utils.surrogate_key([
        'participant_number',
        'session_number',
        'interaction_number',
        'mover_number'
    ])}} as experiment_id,
    *
from
    {{ ref('stg_raw_time_series') }}
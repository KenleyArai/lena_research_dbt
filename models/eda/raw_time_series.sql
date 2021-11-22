{{config(materialized = "table")}}

with info as (
    select distinct
        {{dbt_utils.surrogate_key([
            'pkey',
            'session_number'
        ])}} as info_id,
        pkey as first_participant,
        coalesce(id_1, id_2) as second_participant,
        session_number,
        amount_earned_s1,
        mm,
        mf,
        fm,
        ff
    from 
        {{ source('research', 'variables') }}
    order by 1,2,3

), all_data_with_ids as (
    select

        {{dbt_utils.surrogate_key([
            'participant_number',
            'session_number',
            'mover_number'
        ])}} as experiment_id,

        {{dbt_utils.surrogate_key([
            'participant_number',
            'session_number'
        ])}} as info_id,
        *
    from
        {{ ref('stg_raw_time_series') }}
)

select
    all_data.*,
    info.first_participant,
    info.second_participant,
    info.amount_earned_s1,
    info.mm,
    info.mf,
    info.fm,
    info.ff
from
    all_data_with_ids as all_data
        left join info as info on
            all_data.info_id = info.info_id

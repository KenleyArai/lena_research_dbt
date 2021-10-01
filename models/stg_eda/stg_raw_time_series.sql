{{config(materialized = "view")}}

select
    substring(_dbt_source_relation, 24, 5) as participant_number,

    case
        when _dbt_source_relation ilike '%S1%'
                then 1
        when _dbt_source_relation ilike '%S2%'
                then 2
    end as session_number,

    case
        when _dbt_source_relation ilike '%F_INT%'
                then 1
        when _dbt_source_relation ilike '%S_INT%'
                then 2
    end as interaction_number,

    case
        when _dbt_source_relation ilike '%FM%'
                then 1
        when _dbt_source_relation ilike '%SM%'
                then 2
    end as mover_number,
    
    case
        when _dbt_source_relation ilike '%QP%'
            then 1
        else 0
    end as is_quiet_period,
    
    "Time" as timestamp,
    "Epoch" as epoch,
    "Value (CH 1)" as value,
    "Delta (CH 1)" as delta,
    "Mean (CH 1)" as mean,
    "Median (CH 1)" as median,
    "Samples (CH 1)" as samples,
    "P-P (CH 1)" as p_p,
    _dbt_source_relation as source_relation
from
    {{ ref('stg_raw_union') }}

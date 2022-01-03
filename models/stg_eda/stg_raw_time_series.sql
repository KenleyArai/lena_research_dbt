{{
    config(
            materialized = "table",
            post_hook=[
                "drop index if exists {{ this.table }}_timeseries_pkey",
                "drop index if exists {{ this.table }}_epoch",
                "create index if not exists {{ this.table }}_timeseries_pkey on {{ this }} (timeseries_pkey)",
                "create index if not exists {{ this.table }}_epoch on {{ this }} (epoch)"
            ]
        )
}}

with 

preprocess as (

    select
        substring(_dbt_source_relation, 24, 5) as participant_number,

        case
            when lower(_dbt_source_relation) ilike '%s1%'
                    then 1
            when lower(_dbt_source_relation) ilike '%s2%'
                    then 2
        end as session_number,

        case
            when lower(_dbt_source_relation) ilike '%s1_s%'
                    then 's1_i2'
            when lower(_dbt_source_relation) ilike '%s2_s%'
                    then 's2_i2'
            when lower(_dbt_source_relation) ilike '%s1_f%'
                    then 's1_i1'
            when lower(_dbt_source_relation) ilike '%s2_f%'
                    then 's2_i1'
        end as session_interaction,


        case
            when lower(_dbt_source_relation) ilike '%f_int%'
                    then 1
            when lower(_dbt_source_relation) ilike '%s_int%'
                    then 2
        end as interaction_number,

        case
            when lower(_dbt_source_relation) ilike '%fm%'
                    then 1
            when lower(_dbt_source_relation) ilike '%sm%'
                    then 2
        end as mover_number,
        
        case
            when lower(_dbt_source_relation) ilike '%qp%'
                then 1
            else 0
        end as is_quiet_period,

        "Epoch"              as epoch,
        "Time"               as timestamp,
        "Value (CH 1)"       as value,
        "Delta (CH 1)"       as delta,
        "Mean (CH 1)"        as mean,
        "Median (CH 1)"      as median,
        "Samples (CH 1)"     as samples,
        "P-P (CH 1)"         as p_p,
        _dbt_source_relation as source_relation
    from
        {{ ref('stg_raw_union') }}

), 

base as (

    select 
        lower(participant_number) || '_' || session_interaction as timeseries_pkey,
        *
    from
        preprocess

), 

quiet_period_avg as (

    select
        timeseries_pkey,
        avg(mean) as avg_mean
    from
        base
    where
        is_quiet_period = 1
    {{ dbt_utils.group_by(1) }}

)

select
    b.timeseries_pkey,
    var.partner_timeseries_pkey,
    b.epoch,
    b.timestamp,
    b.value,
    b.delta,
    b.mean,
    (b.mean - qpa.avg_mean)::float/b.mean::float as baseline_corrected_mean,
    b.median,
    b.samples,
    b.p_p,
    
    b.participant_number,
    b.session_number,
    b.session_interaction,
    b.interaction_number,
    
    b.source_relation
from
    base as b
        join quiet_period_avg as qpa on
            b.timeseries_pkey = qpa.timeseries_pkey
        left join {{ref('stg_research_variables')}} as var on
            b.timeseries_pkey = var.timeseries_pkey
where
    b.is_quiet_period = 0

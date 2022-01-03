{{
    config(
            post_hook=[
                "drop index if exists {{ this.table }}_timeseries_pkey",
                "drop index if exists {{ this.table }}_epoch",
                "create index if not exists {{ this.table }}_timeseries_pkey on {{ this }} (timeseries_pkey)",
                "create index if not exists {{ this.table }}_epoch on {{ this }} (epoch)"
            ]
        )
}}

with min_mean as
(
    select
        timeseries_pkey,
        min(delta) as min_delta,
        min(mean) as min_mean
    from
        {{ ref('stg_raw_time_series') }}
    {{ dbt_utils.group_by(1) }}
),
max_mean as
(
    select
        timeseries_pkey,
        max(delta) as max_delta,
        max(mean) as max_mean
    from
        {{ ref('stg_raw_time_series') }}
    {{ dbt_utils.group_by(1) }}
),
normalized_eda as
(
    select
        raw_eda.*,
        (raw_eda.delta - min_mean.min_delta)/(max_mean.max_delta - min_mean.min_delta) as normalized_delta,
        (raw_eda.mean - min_mean.min_mean)/(max_mean.max_mean - min_mean.min_mean) as normalized
    from
        {{ ref('stg_raw_time_series') }} as raw_eda
            join min_mean on
                raw_eda.timeseries_pkey = min_mean.timeseries_pkey
            join max_mean on
                raw_eda.timeseries_pkey = max_mean.timeseries_pkey
),
normalized_eda_stats as
(
    select
        timeseries_pkey,
        avg(normalized) as avg_normalized,
        stddev(normalized) as stddev_normalized,
        avg(normalized_delta) as avg_normalized_delta,
        stddev(normalized_delta) as stddev_normalized_delta
    from
        normalized_eda
    {{ dbt_utils.group_by(1) }}
)

select
    n_eda.*,
    n_eda_stats.avg_normalized,
    n_eda_stats.stddev_normalized,
    (n_eda.normalized - n_eda_stats.avg_normalized)/n_eda_stats.stddev_normalized as normalized_then_standardized,
    n_eda_stats.avg_normalized_delta,
    n_eda_stats.stddev_normalized_delta,
    (n_eda.normalized_delta - n_eda_stats.avg_normalized_delta)/n_eda_stats.stddev_normalized_delta as normalized_then_standardized_delta
from
    normalized_eda as n_eda
        join normalized_eda_stats n_eda_stats on
            n_eda.timeseries_pkey = n_eda_stats.timeseries_pkey 

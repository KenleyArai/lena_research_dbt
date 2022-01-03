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

with eda_stats as
(
    select
        timeseries_pkey,

        avg(mean) as avg_mean,
        stddev(mean) as stddev_mean,

        avg(baseline_corrected_mean) as avg_baseline_corrected_mean,
        stddev(baseline_corrected_mean) as stddev_baseline_corrected_mean
    from
        {{ ref('stg_raw_time_series') }}
    {{ dbt_utils.group_by(1) }}
)

select
    ts.*,
    stats.avg_mean,
    stats.stddev_mean,
    (ts.mean - stats.avg_mean)/stats.stddev_mean as zscore_mean,
    
    stats.avg_baseline_corrected_mean,
    stats.stddev_baseline_corrected_mean,
    (ts.baseline_corrected_mean - stats.avg_baseline_corrected_mean)/stats.stddev_baseline_corrected_mean as zscore_baseline_corrected_mean
from
    {{ ref('stg_raw_time_series') }} as ts
        left join eda_stats as stats on
            ts.timeseries_pkey = stats.timeseries_pkey
        

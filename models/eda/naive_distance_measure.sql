with base as (
    select
        ppt.timeseries_pkey,
        ppt_partner.timeseries_pkey as partner_timeseries_pkey,

        ppt.epoch,

        ppt.mean,
        ppt_partner.mean as partner_mean,

        ppt.mean - ppt_partner.mean as difference_mean,
        ppt.baseline_corrected_mean - ppt_partner.baseline_corrected_mean as difference_baseline_corrected_mean,

        ppt.zscore_mean - ppt_partner.zscore_mean as difference_zscore_mean,
        ppt.zscore_baseline_corrected_mean - ppt_partner.zscore_baseline_corrected_mean as difference_zscore_baseline_corrected_mean,

        {{ dbt_utils.star(from=ref('standardized_expanded'), relation_alias='ppt', except=["timeseries_pkey", 
                                                                                        "partner_timeseries_pkey",
                                                                                        "mean",
                                                                                        "epoch"]) }}
    from 
        {{ref('standardized_expanded')}} as ppt
            left join {{ref('standardized_expanded')}} as ppt_partner on 
                ppt.partner_timeseries_pkey = ppt_partner.timeseries_pkey and
                ppt.epoch = ppt_partner.epoch
)


select 
    timeseries_pkey,
    partner_timeseries_pkey,

    count(difference_mean) as length,

    sum(difference_mean) as sum_difference_mean,
    sum(difference_mean)/count(difference_mean) as naive_distance_measure,

    sum(difference_baseline_corrected_mean) as sum_difference_baseline_corrected_mean,
    sum(difference_baseline_corrected_mean)/count(difference_baseline_corrected_mean) as naive_baseline_corrected_distance_measure

from base
where partner_timeseries_pkey is not null
{{ dbt_utils.group_by(2) }}
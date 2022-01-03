with 

variable_standardization_prep as (
    select
        avg(subject_earnings) as avg_subject_earnings,
        avg(partner_earnings) as avg_partner_earnings,
        avg(session_earnings) as avg_session_earnings,
        avg(interaction_earnings) as avg_interaction_earnings,
        avg(subject_partner_earnings_ratio) as avg_subject_partner_earnings_ratio,
        avg(subject_session_earnings_ratio) as avg_subject_session_earnings_ratio,
        avg(subject_interaction_earnings_ratio) as avg_subject_interaction_earnings_ratio,

        stddev(subject_earnings) as stddev_subject_earnings,
        stddev(partner_earnings) as stddev_partner_earnings,
        stddev(session_earnings) as stddev_session_earnings,
        stddev(interaction_earnings) as stddev_interaction_earnings,
        stddev(subject_partner_earnings_ratio) as stddev_subject_partner_earnings_ratio,
        stddev(subject_session_earnings_ratio) as stddev_subject_session_earnings_ratio,
        stddev(subject_interaction_earnings_ratio) as stddev_subject_interaction_earnings_ratio

    from 
        {{ref('naive_distance_measure_expanded')}} -- instead of stg_research_variables to alread have it filtered
),

zscores as (
    select
        d.timeseries_pkey,
        d.partner_timeseries_pkey,

        (d.subject_earnings - var.avg_subject_earnings)/var.stddev_subject_earnings as zscore_subject_earnings,
        (d.partner_earnings - var.avg_partner_earnings)/var.stddev_partner_earnings as zscore_partner_earnings,
        (d.session_earnings - var.avg_session_earnings)/var.stddev_session_earnings as zscore_session_earnings,
        (d.interaction_earnings - var.avg_interaction_earnings)/var.stddev_interaction_earnings as zscore_interaction_earnings,
        (d.subject_partner_earnings_ratio - var.avg_subject_partner_earnings_ratio)/(var.stddev_subject_partner_earnings_ratio + 0.00001) as zscore_subject_partner_earnings_ratio,
        (d.subject_session_earnings_ratio - var.avg_subject_session_earnings_ratio)/(var.stddev_subject_session_earnings_ratio + 0.00001) as zscore_subject_session_earnings_ratio,
        (d.subject_interaction_earnings_ratio - var.avg_subject_interaction_earnings_ratio)/(var.stddev_subject_interaction_earnings_ratio + 0.00001) as zscore_subject_interaction_earnings_ratio
    from
        {{ref('naive_distance_measure_expanded')}} as d
            join variable_standardization_prep as var on 1=1
)

select
    d.timeseries_pkey,
    d.partner_timeseries_pkey,
    
    d.subject_earnings,
    d.partner_earnings,
    d.session_earnings,
    d.interaction_earnings,

    d.subject_partner_earnings_ratio,
    d.subject_session_earnings_ratio,
    d.subject_interaction_earnings_ratio,

    z.zscore_subject_earnings,
    z.zscore_partner_earnings,
    z.zscore_session_earnings,
    z.zscore_interaction_earnings,

    z.zscore_subject_partner_earnings_ratio,
    z.zscore_subject_session_earnings_ratio,
    z.zscore_subject_interaction_earnings_ratio,

    sqrt(
        d.naive_distance_measure*d.naive_distance_measure +
        (z.zscore_subject_earnings - z.zscore_partner_earnings)*(z.zscore_subject_earnings - z.zscore_partner_earnings)
    ) as euclidean_distance_from_partner_earnings,
    sqrt(
        d.naive_distance_measure*d.naive_distance_measure +
        (z.zscore_subject_earnings - z.zscore_session_earnings)*(z.zscore_subject_earnings - z.zscore_session_earnings)
    ) as euclidean_distance_from_session_earnings,
    sqrt(
        d.naive_distance_measure*d.naive_distance_measure +
        (z.zscore_subject_earnings - z.zscore_interaction_earnings)*(z.zscore_subject_earnings - z.zscore_interaction_earnings)
    ) as euclidean_distance_from_interaction_earnings,

    sqrt(
        d.naive_distance_measure*d.naive_distance_measure +
        (z.zscore_subject_earnings - z.zscore_partner_earnings)*(z.zscore_subject_earnings - z.zscore_partner_earnings) +
        (z.zscore_subject_earnings - z.zscore_session_earnings)*(z.zscore_subject_earnings - z.zscore_session_earnings) +
        (z.zscore_subject_earnings - z.zscore_interaction_earnings)*(z.zscore_subject_earnings - z.zscore_interaction_earnings)
    ) as euclidean_ovarall_distances_interaction_earnings
from
    {{ref('naive_distance_measure_expanded')}} as d
        left join zscores as z on
            d.timeseries_pkey = z.timeseries_pkey and
            d.partner_timeseries_pkey = z.partner_timeseries_pkey
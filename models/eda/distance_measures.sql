select
    naive.timeseries_pkey,
    naive.partner_timeseries_pkey,

    naive.naive_distance_measure,
    naive.naive_baseline_corrected_distance_measure,

    {{ dbt_utils.star(
                        from=ref('naive_euclidean_distance'), 
                        relation_alias='naive_euclidean', 
                        except=[
                                    "timeseries_pkey", 
                                    "partner_timeseries_pkey"
                               ]
                     ) }}

from
    {{ref('naive_distance_measure')}} as naive
        left join {{ref('naive_euclidean_distance')}} as naive_euclidean on
            naive.timeseries_pkey = naive_euclidean.timeseries_pkey and
            naive.partner_timeseries_pkey = naive_euclidean.partner_timeseries_pkey
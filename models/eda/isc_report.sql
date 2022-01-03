-- depends_on: {{ ref('normalized_then_standardized_expanded') }}

{% set participants = dbt_utils.get_column_values(table=ref('stg_research_variables'), column='timeseries_pkey') %}

with epochs as (
    select distinct epoch 
    from {{ref('normalized_then_standardized_expanded')}}
    where coalesce(epoch, -1) <> -1
)

select
    e.epoch,
{% for participant in participants %}
    {{participant}}_tbl.normalized_then_standardized as {{participant}}{% if not loop.last %},{% endif %}
{% endfor %}
from
    epochs as e
    {% for participant in participants %}
        left join lateral (
            select ns.normalized_then_standardized 
            from {{ref('normalized_then_standardized_expanded')}} as ns
            where ns.timeseries_pkey = '{{participant}}' and 
                  coalesce(ns.epoch, -1) = coalesce(e.epoch, -2) and
                  coalesce(ns.mean, -1) <> -1
            order by ns.epoch desc
        ) as {{participant}}_tbl on
        1=1
    {% endfor %}
order by
    epoch asc
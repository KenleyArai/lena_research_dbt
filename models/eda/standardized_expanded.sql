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

select
  {{ dbt_utils.star(from=ref('standardized'), relation_alias='eda_data') }},
  {{ dbt_utils.star(from=ref('stg_research_variables'), relation_alias='participant_variables', except=["timeseries_pkey", "session_number", "interaction_number", "partner_timeseries_pkey"]) }}
from 
  {{ref('standardized')}} as eda_data
    join {{ref('stg_research_variables')}} as participant_variables on
        eda_data.timeseries_pkey = participant_variables.timeseries_pkey
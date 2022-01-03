{{
    config(
            post_hook=[
                "drop index if exists {{ this.table }}_timeseries_pkey",
                "drop index if exists {{ this.table }}_epoch",
                "CREATE INDEX IF NOT EXISTS {{ this.table }}_timeseries_pkey ON {{ this }} (timeseries_pkey)",
                "CREATE INDEX IF NOT EXISTS {{ this.table }}_epoch ON {{ this }} (epoch)"
            ]
        )
}}

select
  {{ dbt_utils.star(from=ref('normalized_then_standardized'), relation_alias='eda_data') }},
  {{ dbt_utils.star(from=ref('stg_research_variables'), relation_alias='participant_variables', except=["timeseries_pkey", "session_number", "interaction_number", "partner_timeseries_pkey"]) }}
from 
  {{ref('normalized_then_standardized')}} as eda_data
    join {{ref('stg_research_variables')}} as participant_variables on
        eda_data.timeseries_pkey = participant_variables.timeseries_pkey
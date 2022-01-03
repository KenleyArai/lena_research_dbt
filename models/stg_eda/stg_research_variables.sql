{{
    config(
            materialized = "table",
            post_hook=[
                "drop index if exists {{ this.table }}_timeseries_pkey",
                "drop index if exists {{ this.table }}_pair_session_id",
                "create index if not exists {{ this.table }}_timeseries_pkey on {{ this }} (timeseries_pkey)",
                "create index if not exists {{ this.table }}_pair_session_id on {{ this }} (pair_session_id)"
            ]
        )
}}


select
    lower("Subject_ID") || '_s' 
                    || session_number  
                    || '_i'
                    || interaction_number
                    as timeseries_pkey,
                    
    case
        when session_number = 1 and interaction_number = 1
            then lower("Friend_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 1 and interaction_number = 2
            then lower("Stranger_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 2 and interaction_number = 1
            then lower("Friend_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 2 and interaction_number = 2
            then lower("Stranger_ID") || '_s' || session_number || '_i' || interaction_number
    end as partner_timeseries_pkey,

    case
        when session_number = 1 and interaction_number = 1
            then lower("Subject_ID") || '_' || lower("Friend_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 1 and interaction_number = 2
            then lower("Subject_ID") || '_' || lower("Stranger_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 2 and interaction_number = 1
            then lower("Subject_ID") || '_' || lower("Friend_ID") || '_s' || session_number || '_i' || interaction_number
        when session_number = 2 and interaction_number = 2
            then lower("Subject_ID") || '_' || lower("Stranger_ID") || '_s' || session_number || '_i' || interaction_number
    end as pair_session_id,
                    
    *,

    -- additional measurements below

    -- ratio calculations
    subject_earnings::float/nullif(partner_earnings,0)::float as subject_partner_earnings_ratio,
    subject_earnings::float/nullif(session_earnings,0)::float as subject_session_earnings_ratio,
    subject_earnings::float/nullif(interaction_earnings,0)::float as subject_interaction_earnings_ratio


from
    {{ ref('variables_from_payoffs') }}
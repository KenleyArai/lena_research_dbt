with quiet_period_avg as
(
    select
        experiment_id,
        avg(value) as quiet_period_channel_avg
    from
        {{ ref('raw_time_series') }}
    where
        is_quiet_period = 1
    {{ dbt_utils.group_by(1) }}
),
add_base_line_correction as
(
    select
        rts.*,
        (rts.mean - qpa.quiet_period_channel_avg)::float/rts.mean as perc_diff_from_qp
    from
        {{ ref('raw_time_series') }} as rts
            join quiet_period_avg as qpa on
                rts.experiment_id = qpa.experiment_id
    where
        rts.is_quiet_period = 0
),
add_prev_baseline_correction as
(
    select
        *,
        lag(perc_diff_from_qp) over (partition by experiment_id order by epoch) as prev_diff
    from add_base_line_correction
),
add_percent_change as
(
    select
        experiment_id,
        epoch,
        participant_number,
        session_number,
        mover_number,
        interaction_number,
        source_relation,
        perc_diff_from_qp,
        prev_diff,
        first_participant,
        second_participant,
        amount_earned_s1,
        mm,
        mf,
        fm,
        ff,
        perc_diff_from_qp as baseline_correction
    from
        add_prev_baseline_correction
)

select
    *
from
    add_percent_change
SELECT
    {{ lower('subject_id') }}  AS eda_subject_id,
    {{ lower('pair_id') }}     AS pair_id,
    amt_earned               AS amount_earned
FROM
    {{ source('research', 'ppt_pairs') }}
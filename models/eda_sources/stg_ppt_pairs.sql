SELECT
    subject_id::LOWER AS eda_subject_id,
    pair_id::LOWER    AS pair_id,
    amt_earned        AS amount_earned
FROM
    {{ source('research', 'ppt_pairs') }}
{{config(materialized = "table")}}

{% set relations = dbt_utils.get_relations_by_pattern('dbt_seed', 'PB%EDA') %}

{{
    dbt_utils.union_relations(relations)
}}

{#

-- The above code compiles to:




        (
            select

                cast('"research"."dbt_seed"."PB003_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast(null as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB003_a1_int_s - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast(null as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a1_int_s - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB003_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB003_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB003_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB003_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB003_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB006_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB006_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB006_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB006_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB006_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB006_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB006_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB006_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB006_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB006_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB007_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB007_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB008_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB008_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB009_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB009_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB010_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB010_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB010_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB010_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB016_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB016_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB024_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB024_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB033_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB033_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB038_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB038_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB042_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB042_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB048_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB048_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB052_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB052_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB061_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB061_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB062_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB062_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB065_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB065_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB065_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB065_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB065_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB065_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB065_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB065_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB065_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB065_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB066_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB066_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB066_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB066_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB066_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB066_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB066_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB066_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB068_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB068_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB068_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB068_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB068_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB068_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB068_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB068_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB068_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB068_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB069_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB069_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB069_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB069_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB069_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB069_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB069_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB069_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB079_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB079_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB079_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB079_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB079_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB079_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB079_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB079_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB500_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB500_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB502_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB502_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB503_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB503_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB503_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB503_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB503_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB503_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB503_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB503_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB504_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB504_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB505_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB505_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB505_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB505_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB505_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB505_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB505_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB505_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB506_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB506_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB506_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB506_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB506_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB506_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB506_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB506_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB507_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB507_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB508_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB508_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB509_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB509_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB511_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB511_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB512_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB512_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB512_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB512_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB512_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB512_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB512_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB512_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB513_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB513_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB513_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB513_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB513_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB513_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB513_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB513_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB513_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB513_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB515_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB515_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB515_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB515_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB515_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB515_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB515_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB515_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB518_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB518_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB519_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB519_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB520_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB520_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB523_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB523_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a1_qp_dg - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a1_qp_dg - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB524_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB524_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB525_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB525_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB526_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB526_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB526_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB526_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB527_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB527_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB529_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB529_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB530_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB530_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB530_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB530_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB530_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB530_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB530_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB530_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB530_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB530_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB531_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB531_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB532_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB532_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB532_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB532_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB532_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB532_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB532_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB532_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB532_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB532_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB534_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB534_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB534_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB534_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB534_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB534_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB534_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB534_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB536_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB536_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB538_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB538_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB539_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB539_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB539_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB539_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB539_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB539_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB539_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB539_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB539_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB539_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB540_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB540_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB542_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB542_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b1_int_f_p = EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b1_int_f_p = EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b1_int_s_p = EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b1_int_s_p = EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB545_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB545_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB546_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB546_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB547_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB547_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB549_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB549_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB551_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB551_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB551_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB551_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB552_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB552_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB553_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB553_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB554_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB554_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB555_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB555_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB555_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB555_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB555_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB555_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB555_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB555_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB555_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB555_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB556_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB556_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB557_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB557_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB558_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB558_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB560_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB560_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB561_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB561_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB562_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB562_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB564_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB564_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB564_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB564_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB564_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB564_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB564_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB564_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB565_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB565_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB565_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB565_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB565_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB565_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB565_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB565_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB565_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB565_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB566_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB566_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB566_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB566_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB566_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB566_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB566_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB566_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB566_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB566_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB567_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB567_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB568_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB568_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB569_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB569_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB571_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB571_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB575_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB575_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB577_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB577_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB578_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB578_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB579_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB579_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB579_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB579_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB579_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB579_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB579_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB579_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB579_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB579_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB580_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB580_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB581_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB581_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB582_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB582_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB583_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB583_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB584_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB584_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB585_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB585_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB586_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB586_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB587_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB587_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB587_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB587_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB587_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB587_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB587_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB587_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB587_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB587_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB588_b2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB588_b2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB590_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB590_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB591_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB591_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB592_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB592_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB593_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB593_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB595_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB595_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB596_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB596_a2_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a1_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a1_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a1_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a1_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a1_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a1_qp_bl - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a2_int_f_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a2_int_f_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a2_int_s_p - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast("Median (CH 1)" as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a2_int_s_p - EDA"
        )

        union all


        (
            select

                cast('"research"."dbt_seed"."PB598_a2_qp_bl - EDA"' as
    varchar
) as _dbt_source_relation,

                    cast("Epoch" as integer) as "Epoch" ,
                    cast("Time" as integer) as "Time" ,
                    cast("Value (CH 1)" as double precision) as "Value (CH 1)" ,
                    cast("Delta (CH 1)" as double precision) as "Delta (CH 1)" ,
                    cast("Mean (CH 1)" as double precision) as "Mean (CH 1)" ,
                    cast(null as double precision) as "Median (CH 1)" ,
                    cast("Samples (CH 1)" as integer) as "Samples (CH 1)" ,
                    cast("P-P (CH 1)" as double precision) as "P-P (CH 1)"

            from "research"."dbt_seed"."PB598_a2_qp_bl - EDA"
        )




#}
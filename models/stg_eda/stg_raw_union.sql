{% set relations = dbt_utils.get_relations_by_pattern('dbt_seed', 'P%EDA') %}

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

.........

#}
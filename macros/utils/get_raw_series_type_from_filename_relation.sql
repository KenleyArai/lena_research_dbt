{% macro get_raw_series_type_from_filename_relation(filename_relation) %}
    CASE
        WHEN {{ filename_relation }} ILIKE '%qp_bl%'
            THEN LEFT(RIGHT({{ filename_relation }}, 14), LENGTH(RIGHT({{ filename_relation }}, 14)) - 8)
        ELSE LEFT(RIGHT({{ filename_relation }}, 14), LENGTH(RIGHT({{ filename_relation }}, 14)) - 6)
    END
{% endmacro %}
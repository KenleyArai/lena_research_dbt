{% macro get_raw_series_type_from_filename_relation(filename_relation) %}
    LEFT(RIGHT({{ filename_relation }}, 14), LENGTH(RIGHT({{ filename_relation }}, 14)) - 6)
{% endmacro %}
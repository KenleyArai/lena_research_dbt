{% macro get_raw_subject_id_from_filename_source(filename_relation_column) %}
    RIGHT(LEFT({{ filename_relation_column }}, LENGTH({{ filename_relation_column }}) - 18), 5)
{% endmacro %}
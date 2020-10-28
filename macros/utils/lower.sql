{%- macro lower(column) -%}
    LOWER({{- column -}})
{%- endmacro -%}
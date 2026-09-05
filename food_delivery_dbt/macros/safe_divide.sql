{% macro safe_divide(numerator, denominator, decimals=2) %}
    ROUND(
        DIV0({{ numerator }}, {{ denominator }}),
        {{ decimals }}
    )
{% endmacro %}
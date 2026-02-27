{% macro no_empty_string(model) %}

{% for col in adapter.get_columns_in_relation(model) %}
    {% if col.is_string() %}
        {{col.name }} is not NULL AND {{col.name }} <> '' 
    {% endif %}

{% endfor %}
TRUE
{% endmacro %}
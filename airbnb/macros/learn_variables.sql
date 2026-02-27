{% macro learn_variables() %}
  {% set my_variable = "Hello, DBT!" %}
  {{ log(my_variable) }}
  {{ log('Again ' ~ my_variable, info=True) }}
  {{ log("Hello DBT user" ~ var('user_name', "No username assigned") ~ "!", info=True) }}
{% endmacro %}
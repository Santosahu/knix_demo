{% macro generate_database_name(custom_database_name=none, node=none) %}
    {%- set default_database = target.database -%}
    {%- if custom_database_name is none -%}
        {{ default_database }}
    {%- else -%}
        {%- if target.name == 'default' or target.name == 'dev' or target.name == 'prod'-%}
            {{ custom_database_name | trim }}    
        {%- else -%}
            {{ target_database }} 
        {%- endif -%}
    {%- endif -%}
{% endmacro %}
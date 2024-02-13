with population_10 as
(
    select *from {{ref('stg_population')}}
)

    select
        country_name,sum(
        {% for i in range (2011,2022) %}
            `{{i}}`
            {% if not loop.last %}
            +
            {% endif %}
            
        {% endfor %}) /10 as average
        
        from population_10
        group by country_name





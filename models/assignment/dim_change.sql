with population as
(
    select *from {{ref('stg_population')}}
),
countries as
(
    select *from {{ref('stg_countries')}}
)

select continent,avg((`2021`-`2011`)/`2011`)*100.0 as change_in_pop from  population
inner join countries on countries.country_name = population.country_name
group by continent 
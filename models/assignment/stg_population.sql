with 

source as (

    select * from {{ source('World_population', 'Population') }}

),

population as (

    select
        

    *from source

)

select * from population

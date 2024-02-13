with 

source as (

    select * from {{ source('World_population', 'countries') }}

),

countries as (

    select
        *

    from source

)

select * from countries

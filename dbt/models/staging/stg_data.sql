with

    source as (select * from {{ source("staging", "data") }}),

    renamed as (

        select
            cast(sno as integer) as snoid,
            cast(observationdate as timestamp) as observation_date,
            {{"country"}},
            province_state,
            cast(confirmed as integer) as confirmed,
            cast(deaths as integer) as deaths,
            cast(recovered as integer) as recovered,

        from source

    )

select *
from renamed

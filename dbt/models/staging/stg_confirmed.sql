with

    source as (select * from {{ source("staging", "confirmed") }}),

    renamed as (select * from source)

select  A2020_2_5
from renamed

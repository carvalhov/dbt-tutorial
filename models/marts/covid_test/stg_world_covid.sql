with 
    transformation as (
        SELECT
            cast(country_name as string) as country_name
            , cast(state_name as string) as state_name
            , cast(confirmed as int) as confirmed_cases
            , cast(deaths as int) as death_cases
            , cast(recovered as int) as recovered_cases
            , cast(active as int) as active_cases
            , cast(refresh_date as date) as refresh_date
            , cast(incidence_rate as numeric) as incidence_rate
        from {{ source('covid', 'world_covid') }}
    )
    select * from transformation
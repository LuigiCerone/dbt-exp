with

source as (

    select * from {{ source('jaffle_shop', 'raw_orders') }}
    where ordered_at <= '{{ var('truncate_timespan_to') }}'

),

renamed as (

    select

        id as order_id,
        store_id as location_id,
        customer as customer_id,
        (order_total / 100.0) as order_total,
        (tax_paid / 100.0) as tax_paid,
        {{ dbt.date_trunc('day','ordered_at') }} as ordered_at

    from source

)

select * from renamed

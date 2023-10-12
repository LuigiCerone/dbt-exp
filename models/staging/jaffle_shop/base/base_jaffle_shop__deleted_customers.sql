with

source as (

    select * from {{ source('jaffle_shop','raw_customer_deletes') }}

),

deleted_customers as (

    select
        id as customer_id,
        deleted_at

    from source

)

select * from deleted_customers

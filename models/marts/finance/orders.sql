{%- set payment_methods = ['bank_transfer','credit_card','coupon','gift_card'] -%}

with

orders as  (

    select * from {{ ref('stg_jaffle_shop__orders' )}}

),

order_payments as (

    select * from {{ ref('int_payments_pivoted_to_orders') }}

),

orders_and_order_payments_joined as (

    select
        orders.order_id,
        orders.customer_id,
        orders.ordered_at,
        orders.status,

        {% for payment_method in payment_methods -%}
        order_payments.{{ payment_method }}_amount,
        order_payments.had_{{payment_method}}_payment,
        {% endfor -%}

        coalesce(order_payments.total_amount, 0) as amount


    from orders

    left join order_payments on orders.order_id = order_payments.order_id

)

select * from orders_and_order_payments_joined

with top10 as (
    select
        customerID,
        sum(totalPrice) as sum
    from {{ ref("bh_sales_transactions") }}
    group by all
    order by sum desc
    limit 10
)

select
    t.customerID as customer_id,
    concat_ws(" ", c.first_name, c.last_name) as full_name,
    t.sum as purchase_amount
from top10 as t
left join {{ ref("bh_sales_customers") }} as c
    on (c.customerID - 1000000) = t.customerID

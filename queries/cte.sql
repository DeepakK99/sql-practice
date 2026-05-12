With delayed_shipments as (
    select c.customer_id,
        c.name,
        o.order_id
    from customers c
        join orders o on c.customer_id = o.customer_id
        join shipments s on o.order_id = s.order_id
    where s.status = 'delayed'
)
select customer_id,
    name,
    count(order_id)
from delayed_shipments
group by customer_id,
    name;
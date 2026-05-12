---Ranking
select customer_id,
    order_id,
    amount
from (
        select customer_id,
            order_id,
            amount,
            row_number() over (             -- RANK(), DENSE_RANK()
                partition by customer_id
                order by amount desc
            ) as rn
        from orders
    )
where rn = 1;

-- Value
select customer_id,
    amount,
    lag(amount) over (              -- LEAD() :  next value
        partition by customer_id
        order by order_date
    ) as prev_amount,
    amount - lag(amount) over (
        partition by customer_id
        order by order_date
    ) as difference
from orders;

-- Aggregate 
select order_date,
    sum(amount) over (              -- AVG, COUNT, MIN, MAX
        order by order_date
    ) as running_total
from orders;
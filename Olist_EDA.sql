use olist

select customer_id 
from olist.customers

select customer_unique_id, order_id, seller_id
from customers
join orders using (customer_id)
join order_items using (order_id)
join sellers using (seller_id)

select *
from customers
join orders using (customer_id)
join order_items using (order_id)
join sellers using (seller_id)
join closed_deals using (seller_id)

select payment_value, final_price
from order_payments
join order_customer_items_paid using (order_id)

select customer_unique_id, order_id, `Year`, final_price
from customers
join orders using (customer_id)
join order_status_year_price using (order_id)
join order_customer_items_paid using (order_id)
group by customer_unique_id, order_id, `Year`, final_price
order by `Year`ASC
limit 10


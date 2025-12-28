q1:
select customer_id,sum(final_amount) as total_spent
from food_orders
group by customer_id
order by total_spent desc
limit 10;
-- insight: a small set of customers contributes disproportionately to total revenue.

q2:
select customer_age_group,avg(order_value) as avg_order_value
from food_orders
group by customer_age_group
order by avg_order_value desc;
-- insight: certain age groups place higher-value orders, useful for targeted marketing.

q3: 
select order_day_type, count(*) as total_orders
from food_orders
group by order_day_type;
-- insight: weekend demand is higher, indicating increased leisure-time ordering.

q4:
select month(order_date) as month,sum(final_amount) as monthly_revenue
from food_orders
group by month
order by month;
-- insight: revenue shows seasonal trends that help in demand forecasting.

q5: 
select discount_applied, avg(profit_margin) as avg_profit
from food_orders
group by discount_applied
order by discount_applied;
-- insight: higher discounts generally reduce average profit margins.

q6: 
select city,sum(final_amount) as total_revenue
from food_orders
group by city
order by total_revenue desc
limit 10;
-- insight: a few major cities generate most of the platform’s revenue.

q7: 
select city,avg(delivery_time_min) as avg_delivery_time
from food_orders
group by city
order by avg_delivery_time;
-- insight: delivery efficiency varies significantly across cities.

q8: 
select distance_km,avg(delivery_time_min) as avg_delivery_time
from food_orders
group by distance_km
order by distance_km;
-- insight: longer delivery distances are associated with higher delivery times.

q9: 
select delivery_rating,avg(delivery_time_min) as avg_delivery_time
from food_orders
where delivery_rating is not null
group by delivery_rating
order by delivery_rating;
-- insight: faster deliveries tend to receive higher customer ratings.

q10: 
select restaurant_name, avg(restaurant_rating) as avg_rating
from food_orders
group by restaurant_name
order by avg_rating desc
limit 10;
-- insight: consistently high-rated restaurants indicate strong food quality and service.

q11:
select restaurant_name, count(*) as cancelled_orders
from food_orders
where order_status = 'cancelled'
group by restaurant_name
order by cancelled_orders desc
limit 10;
-- insight: certain restaurants have higher cancellations and need operational review.

q12: 
select cuisine_type,count(*) as total_orders
from food_orders
group by cuisine_type
order by total_orders desc;
-- insight: popular cuisines drive higher order volumes and customer engagement.

q13: 
select peak_hour_flag,count(*) as total_orders
from food_orders
group by peak_hour_flag;
-- insight: peak hours show higher order concentration, requiring better delivery staffing.

q14: 
select payment_mode, count(*) as usage_count
from food_orders
group by payment_mode
order by usage_count desc;
-- insight: digital payment modes dominate customer transactions.

q15:
select cancellation_reason,count(*) as cancellation_count
from food_orders
where order_status = 'cancelled'
group by cancellation_reason
order by cancellation_count desc;
-- insight: delivery delays are a major contributor to order cancellations.

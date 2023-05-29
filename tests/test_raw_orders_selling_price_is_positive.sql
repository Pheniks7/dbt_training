select
orderid,
sum(ordersellingprice) as total_sp
from {{ source('globalmart', 'orders') }}
group by orderid
having sum(ordersellingprice) < 0
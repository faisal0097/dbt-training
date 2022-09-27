select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
--*,
o.ordersellingprice - o.ordercostprice as OrderProfit,
o.ordercostprice,
o.ordersellingprice,
-- raw customer
c.customername,
c.segment,
c.country,
--Raw Product
P.category,
P.Productname,
P.subcategory
from {{ ref('Raw_Orders') }} as o
left join {{ ref('Raw_Customer') }} as c
on o.customerid=c.customerid
left join {{ ref('Raw_Product') }} as p
on p.productid=o.productid

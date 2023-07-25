-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

--Top ten customers with the most orders
Select o.CustomerID, 
      c.FirstName,
      c.LastName,
      c.Email,
      count(o.OrderID) as CountOrders,
      rank() over(order by count(o.OrderID) desc) as CustomerRanking
from orders o 
join Customers c on o.CustomerID=c.CustomerID
group by o.CustomerID
limit 15


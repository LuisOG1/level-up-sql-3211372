-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

Select CustomerID
from Customers
where FirstName like 'Loretta%' and LastName like 'Hundey%'

Insert into Orders (CustomerID,OrderDate)
  Values((Select CustomerID
from Customers
where FirstName like 'Loretta%' and LastName like 'Hundey%'),
    '2022-09-20 14:00:00')

select*
from Orders
where CustomerID=70

INSERT into OrdersDishes (OrderID,DishID)
Values (1001,(SELECT DishID from Dishes where Name='House Salad')),
        (1001,(SELECT DishID from Dishes where Name='Mini Cheeseburgers')),
        (1001,(SELECT DishID from Dishes where Name='Tropical Blue Smoothie'))

Select sum(d.Price) as 'Total Cost For Order 1001'
from Dishes d
join OrdersDishes o on d.DishID=o.DishID
where OrderID=1001
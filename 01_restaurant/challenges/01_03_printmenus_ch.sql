-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

--Menu 1
select Name,
      Type,
      Price,
      Description
from Dishes
order by Price desc
--Menu 2
Select Name,
      Type,
      Price
from Dishes
where Type='Appetizer' or Type='Beverage'
order by Price desc, Type
--Menu 3
Select Name,
      Type,
      Price
from Dishes
where Type is not 'Beverage'
order by Price desc, Type
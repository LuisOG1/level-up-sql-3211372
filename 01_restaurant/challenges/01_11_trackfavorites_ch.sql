-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Select *
from Customers
where FirstName='Cleo'

Update Customers
set FavoriteDish=(SELECT DishID from Dishes where Name='Quinoa Salmon Salad')
where CustomerID=(Select CustomerID
                  from Customers
                  where FirstName='Cleo')
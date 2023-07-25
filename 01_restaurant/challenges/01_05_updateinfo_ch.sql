-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

Select *
from Customers
where FirstName='Taylor' and LastName='Jenkins'--CustomerID 26

UPDATE Customers 
SET Address='74 Pine St.',
    City='New York',
    State='NY'
WHERE CustomerID=26
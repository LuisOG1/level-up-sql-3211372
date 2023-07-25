-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Select *
from Reservations
where Date like '2022-07-29%'--Norby CustomerID 64, reservation ID 2000

select *
from Customers
where CustomerID=64

--Delete reservation record
Delete 
from Reservations
where ReservationID=2000




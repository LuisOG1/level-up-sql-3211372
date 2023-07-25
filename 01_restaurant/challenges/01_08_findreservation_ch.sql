-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
Select *
from Customers
where LastName like 'Ste%'

Select c.CustomerID,c.FirstName,c.LastName, r.ReservationID, r.Date, r.PartySize
from Customers c
join Reservations r on c.CustomerID=r.CustomerID
where LastName like 'Ste%' 
And Date like '2022-06-14%'
And r.PartySize=4


-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

Select *
from Customers
where Email='atapley2j@kinetecoinc.com'--CustomerID 92 Asher Tapley

select* from AnniversaryAttendees

INSERT into AnniversaryAttendees (CustomerID,PartySize)
VALUES ('92','3')
--Same as all the line above but with a subquery

INSERT into AnniversaryAttendees (CustomerID,PartySize)
VALUES (Select CustomerID
from Customers
where Email='atapley2j@kinetecoinc.com'),'3')
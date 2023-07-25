-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com, (555) 555-1232)
-- for 5 people on August 12, 2022 at 6PM (18:00)

Select *
from Customers
where Email='smac@kinetecoinc.com'

insert into Customers (FirstName,LastName,Email,Phone)
values ('Sam','McAdams','smac@kinetecoinc.com','555-555-1232')

insert into Reservations (CustomerID,Date,PartySize)
values ('102','2022-08-12 18:00:00','5')

--Reservation created under new customer
select r.ReservationID,r.CustomerID,r.Date,c.Email
from Reservations r
join Customers c on r.CustomerID=c.CustomerID
where c.CustomerID=102


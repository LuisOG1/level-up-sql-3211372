-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

Select b.Title, p.FirstName, l.DueDate
from Books b 
join Loans l on b.BookID=l.BookID
join Patrons p on l.PatronID=p.PatronID
where l.DueDate='2022-07-13'
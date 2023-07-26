-- Prepare a report of the library patrons
-- who have checked out the fewest books.

Select p.PatronID,p.FirstName,count(LoanID) as CountOfLoans --count() over(partition by p.PatronID order by count(l.LoanID) desc)
from Books b 
join Loans l on b.BookID=l.BookID
join Patrons p on l.PatronID=p.PatronID
group by p.PatronID
order by CountOfLoans asc
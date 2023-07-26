-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select *
from Books

select *
FROM Books
WHERE BookID NOT IN (select DISTINCT BookID from Loans where ReturnedDate is null)
and Published>1889
and Published<1900
order by Title
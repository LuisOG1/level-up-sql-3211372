-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT month(ReturnedDates)
from
(select *,cast (ReturnedDate as date) as ReturnedDates
from Loans)

select strftime('%Y', Published)as YearPublished--,count(BookID)
from Books
GROUP by YearPublished

--First List top 5
select Published,count(BookID)as BookCount
from Books
GROUP by Published
ORDER BY Published

--Second List top 5
Select b.Title,count(l.BookID) as BookCount, Rank()over(order by count(l.BookID)desc) as TitleRank
from Books b 
join Loans l on b.BookID=l.BookID
group by b.Title
order by BookCount desc
limit 5
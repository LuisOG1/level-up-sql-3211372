-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

Select Title,count(BookID) as CountOfBooks
from Books
Where Title='Dracula'
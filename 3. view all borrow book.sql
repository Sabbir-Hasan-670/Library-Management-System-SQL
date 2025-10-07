select 
	t.TransactionID,
    b.title,
    u.FirstName,
    u.LastName,
    t.BorrowDate,
    t.DueDate
from transactions t
JOIN books b ON t.BookID = b.BookID
JOIN users u ON t.UserID = u.UserID
where t.ReturnDate IS NULL;
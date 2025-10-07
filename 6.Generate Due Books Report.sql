select
	t.TransactionID,
    b.Title,
    u.FirstName,
    u.LastName,
    t.DueDate
from transactions t
JOIN Books b ON t.BookID = b.BookID
JOIN users u ON t.UserID = u.UserID
WHERE t.ReturnDate IS NULL AND t.DueDate < CURRENT_DATE;
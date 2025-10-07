
BEGIN;
INSERT INTO Transactions (BookID, UserID, BorrowDate, DueDate) 
VALUES (1, 1, CURRENT_DATE, DATE_ADD(CURRENT_DATE, INTERVAL 14 DAY));

UPDATE Books 
SET AvailableCopies = AvailableCopies - 1
WHERE BookID = 1;

COMMIT;

-- Returning a book (e.g., TransactionID = 1)
BEGIN;

-- Update the transaction with the return date
UPDATE Transactions
SET ReturnDate = CURRENT_DATE
WHERE TransactionID = 1;

-- Update available copies in Books table
UPDATE Books 
SET AvailableCopies = AvailableCopies + 1
WHERE BookID = (SELECT BookID FROM Transactions WHERE TransactionID = 1);

COMMIT;

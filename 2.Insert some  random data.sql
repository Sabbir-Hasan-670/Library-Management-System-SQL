use Library_Management_System;
INSERT INTO Books ( Title, Author, Genre, PublishedYear, AvailableCopies)
value
	('The Great Gatsby', 'F.Scott Fitzgerald', 'Fiction', 1925, 5),
    ('1984', 'Geroge Orwell', 'Dystopian', 1949,3),
    ('To Kill a Mockingbird', 'Harper lee', 'Fiction', 1960, 4);
    
INSERT INTO Users (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES 
    ('John', 'Doe', 'johndoe@example.com', '123-456-7890', 'Regular'),
    ('Jane', 'Smith', 'janesmith@example.com', '987-654-3210', 'Premium');

INSERT INTO Transactions (BookID, UserID, BorrowDate, ReturnDate, DueDate)
VALUES 
    (1, 1, '2025-10-01', NULL, '2025-10-15'), 
    (2, 2, '2025-10-05', NULL, '2025-10-20');
	
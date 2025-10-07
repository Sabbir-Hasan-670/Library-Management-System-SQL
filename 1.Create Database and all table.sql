create database Library_Management_System;
use Library_Management_System;
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Genre VARCHAR(100),
    PublishedYear INT,
    AvailableCopies INT
);

create table Users (
	UserID INT primary key auto_increment,
    FirstName varchar(100),
    LastName varchar(100),
    Email varchar(255) unique NOT NULL,
    PhoneNumber varchar(20),
    MemberShipType varchar(50)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    UserID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

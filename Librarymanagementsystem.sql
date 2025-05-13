-- ========================================
-- Library Management System Database
-- ========================================

-- Create the library database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS library_management;

-- Use the library_management database
USE library_management;

-- ========================================
-- Books Table
-- ========================================
-- This table stores information about the books available in the library.
-- Each book will have a unique identifier (Book_ID), and other details like title, author, genre, and quantity.

CREATE TABLE IF NOT EXISTS Books (
    Book_ID INT AUTO_INCREMENT, -- Unique identifier for each book (auto-incremented)
    Title VARCHAR(255) NOT NULL, -- Title of the book (cannot be NULL)
    Author VARCHAR(255) NOT NULL, -- Author of the book (cannot be NULL)
    Genre VARCHAR(100), -- Genre of the book (optional)
    Publication_Date DATE, -- Publication date of the book (optional)
    Quantity INT NOT NULL, -- Quantity of books available (cannot be NULL)
    PRIMARY KEY (Book_ID), -- Primary key is the Book_ID
    UNIQUE (Title, Author) -- Ensures that no two books have the same title and author combination
);

-- ========================================
-- Members Table
-- ========================================
-- This table stores information about the members who borrow books from the library.
-- Each member has a unique identifier (Member_ID), and other details such as name, contact information, and membership date.

CREATE TABLE IF NOT EXISTS Members (
    Member_ID INT AUTO_INCREMENT, -- Unique identifier for each member (auto-incremented)
    Name VARCHAR(255) NOT NULL, -- Name of the member (cannot be NULL)
    Address TEXT, -- Address of the member (optional)
    Phone VARCHAR(15), -- Phone number of the member (optional)
    Email VARCHAR(100) UNIQUE, -- Email address of the member (must be unique)
    Membership_Date DATE NOT NULL, -- The date the member joined the library (cannot be NULL)
    PRIMARY KEY (Member_ID) -- Primary key is the Member_ID
);

-- ========================================
-- Staff Table
-- ========================================
-- This table stores information about the library staff who manage the borrowing process.
-- Each staff member has a unique identifier (Staff_ID), and other details such as name, position, and contact information.

CREATE TABLE IF NOT EXISTS Staff (
    Staff_ID INT AUTO_INCREMENT, -- Unique identifier for each staff member (auto-incremented)
    Name VARCHAR(255) NOT NULL, -- Name of the staff member (cannot be NULL)
    Position VARCHAR(100), -- Position of the staff member in the library (optional)
    Email VARCHAR(100) UNIQUE, -- Email address of the staff member (must be unique)
    PRIMARY KEY (Staff_ID) -- Primary key is the Staff_ID
);

-- ========================================
-- Borrowing Table
-- ========================================
-- This table stores information about which books have been borrowed by which members,
-- and which staff member handled the borrowing process.
-- The Borrowing table has foreign keys linking it to the Books, Members, and Staff tables.

CREATE TABLE IF NOT EXISTS Borrowing (
    Borrow_ID INT AUTO_INCREMENT, -- Unique identifier for each borrowing record (auto-incremented)
    Book_ID INT, -- The Book_ID of the borrowed book (foreign key from Books table)
    Member_ID INT, -- The Member_ID of the borrowing member (foreign key from Members table)
    Staff_ID INT, -- The Staff_ID of the staff member who handled the borrowing (foreign key from Staff table)
    Borrow_Date DATE NOT NULL, -- The date when the book was borrowed (cannot be NULL)
    Return_Date DATE, -- The date when the book is returned (optional, can be NULL if not returned yet)
    PRIMARY KEY (Borrow_ID), -- Primary key is the Borrow_ID
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE, -- Foreign key constraint: Book_ID links to Books table
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID) ON DELETE CASCADE, -- Foreign key constraint: Member_ID links to Members table
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE -- Foreign key constraint: Staff_ID links to Staff table
);

-- ========================================
-- End of SQL Code for Library Management System
-- ========================================
-- This script sets up the database, tables, and relationships required for the library management system.
-- It defines primary keys, foreign keys, and constraints to maintain data integrity and consistency.

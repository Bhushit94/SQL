create database library;
USE library;
CREATE TABLE books(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(100),
    year YEAR,
    genre VARCHAR(100));
select * from books;

INSERT INTO books(title, author, year, genre)
VALUES("The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("Pride and Prejudice", "Jane Austen", 1913, "Romance"),
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
("1984", "George Orwell", 1949, "Dystopian"),
("Moby Dick", "Herman Melville", 1951, "Adventure");

SELECT * FROM books WHERE title LIKE 'T%';
SELECT * FROM books WHERE author LIKE '%son';
SELECT * FROM books WHERE title LIKE '%and%';
SELECT * FROM books WHERE title LIKE '%bird';
SELECT * FROM books WHERE title REGEXP '^[A-Za-z0-9]{3}$';
SELECT * FROM books WHERE title REGEXP '[0-9]';
SELECT * FROM books WHERE author REGEXP '^[A-Ja-j]';
SELECT * FROM books WHERE genre REGEXP '^(Fiction|Adventure)$';
SELECT * FROM books WHERE title REGEXP '[A-Z]';
SELECT * FROM books WHERE year LIKE '18%' OR year LIKE '19%' AND year < '1951';
SELECT * FROM books WHERE author REGEXP '^[A-Za-z]+ [A-Za-z]+$';
SELECT * FROM books WHERE title REGEXP '^P[A-Za-z]* [A-Za-z]+$';
SELECT * FROM books WHERE title REGEXP '[^A-Za-z0-9 ]';
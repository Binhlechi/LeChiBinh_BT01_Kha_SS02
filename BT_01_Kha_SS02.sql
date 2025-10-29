--1. Tạo database LibraryDB
CREATE DATABASE LibraryDB;
--2. Tạo schema library
CREATE SCHEMA library;
--3. Tạo Bảng Books
CREATE TABLE library.Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_year INTEGER,
    price NUMERIC
);
--4a. Xem tất cả các database 
SELECT datname AS "LibraryDB" FROM pg_database;
--4b. Xem tất cả các schema trong database
SELECT
    schema_name AS "library"
FROM information_schema.schemata
ORDER BY schema_name;
--4c. Xem cấu trúc bảng Books
SELECT 
    column_name,
    data_type,
    character_maximum_length,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'library' 
  AND table_name = 'books'
ORDER BY ordinal_position;
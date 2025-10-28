CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_year INTEGER,
    price NUMERIC
);
a. SELECT datname AS "LibraryDB" FROM pg_database;
b. SELECT 
    schema_name AS "public"
FROM information_schema.schemata
ORDER BY schema_name;
c. Select * From Books;
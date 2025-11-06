Task 8: INNER JOIN between author and book tables
SELECT 
    b.book_id, 
    b.title, 
    a.name AS author_name, 
    a.country
FROM book b
INNER JOIN author a 
    ON b.author_id = a.author_id;

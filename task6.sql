6. Prepare a select query using WHERE, 'NOT IN', LIKE and ORDER BY clause
SELECT b.book_id, b.title, a.name AS author_name, b.published_year
FROM book b
JOIN author a ON b.author_id = a.author_id
WHERE a.name NOT IN ('George Orwell')
  AND b.title LIKE '%Harry%'
ORDER BY b.published_year ASC;

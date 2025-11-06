Task 7: Use GROUP BY and HAVING with COUNT and SUM
SELECT a.name AS author_name,
       COUNT(b.book_id) AS total_books
FROM author a
JOIN book b ON a.author_id = b.author_id
GROUP BY a.name
HAVING COUNT(b.book_id) >= 1;

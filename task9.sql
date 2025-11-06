9. Prepare LEFT JOIN query between table1 and table2
SELECT a.author_id, 
       a.name AS author_name, 
       b.book_id, 
       b.title
FROM author a
LEFT JOIN book b
ON a.author_id = b.author_id
ORDER BY a.author_id;


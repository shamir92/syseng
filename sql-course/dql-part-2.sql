Question: List all books written by a specific author. 
Answer:
SQL -> 
SELECT b.title
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.author_name = 'Author Name';

Question: List all customers who have ordered a specific book. 
Answer:
SQL -> 
SELECT c.first_name, c.last_name
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
WHERE ol.book_id = (SELECT book_id FROM book WHERE title = 'Book Title');


Question: List all books published by a specific publisher in a specific language. 
Answer:
SQL -> 
SELECT b.title
FROM book b
JOIN publisher p ON b.publisher_id = p.publisher_id
JOIN book_language bl ON b.language_id = bl.language_id
WHERE p.publisher_name = 'Publisher Name' AND bl.language_name = 'Language Name';

Question: List all customers who have made an order that is currently in a specific status. 
Answer:
SQL -> 
SELECT c.first_name, c.last_name
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_history oh ON co.order_id = oh.order_id
JOIN order_status os ON oh.status_id = os.status_id
WHERE os.status_value = 'Status Value';

Question: List all books that have never been ordered. 
Answer:
SQL -> 
SELECT b.title
FROM book b
LEFT JOIN order_line ol ON b.book_id = ol.book_id
WHERE ol.order_id IS NULL;

Question: List all customers who have not made any orders. 
Answer:
SQL -> 
SELECT c.first_name, c.last_name
FROM customer c
LEFT JOIN cust_order co ON c.customer_id = co.customer_id
WHERE co.order_id IS NULL;


Question: List the total cost of all orders for each customer. 
Answer:
SQL -> 
SELECT c.first_name, c.last_name, SUM(ol.price) as total_cost
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
GROUP BY c.customer_id;

Question: List all authors who have written more than 5 books. 
Answer:
SQL -> 
SELECT a.author_name
FROM author a
JOIN book_author ba ON a.author_id = ba.author_id
GROUP BY a.author_id
HAVING COUNT(ba.book_id) > 5;

Question: List all publishers who have published books in more than 3 languages. 
Answer:
SQL -> 
SELECT p.publisher_name
FROM publisher p
JOIN book b ON p.publisher_id = b.publisher_id
JOIN book_language bl ON b.language_id = bl.language_id
GROUP BY p.publisher_id
HAVING COUNT(DISTINCT bl.language_id) > 3;

Question: List all customers who have ordered books written by a specific author. 
Answer:
SQL ->
SELECT c.first_name, c.last_name
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book_author ba ON ol.book_id = ba.book_id
WHERE ba.author_id = (SELECT author_id FROM author WHERE author_name = 'Author Name');
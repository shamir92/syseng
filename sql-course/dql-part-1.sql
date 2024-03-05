

Easy

Question: List all authors. 
Answer: SELECT * FROM author;

Question: List all publishers. 
Answer: SELECT * FROM publisher;

Question: List all books. 
Answer: SELECT * FROM book;

Question: List all books written by a specific author. 
Answer:
SQL -> 
SELECT b.* 
FROM book b 
JOIN book_author ba ON b.book_id = ba.book_id 
WHERE ba.author_id = <author_id>;

Question: List all books published by a specific publisher. Answer:
SQL -> 
SELECT * 
FROM book 
WHERE publisher_id = <publisher_id>;

Question: List all books in a specific language. 
Answer:
SQL -> 
SELECT b.* 
FROM book b 
JOIN book_language bl ON b.language_id = bl.language_id 
WHERE bl.language_code = '<language_code>';

Question: List all customers. 
Answer: SELECT * FROM customer;

Question: List all orders made by a specific customer. 
Answer:
SQL -> 
SELECT * 
FROM cust_order 
WHERE customer_id = <customer_id>;

Question: List all books ordered by a specific customer. 
Answer:
SQL -> 
SELECT b.* 
FROM book b 
JOIN order_line ol ON b.book_id = ol.book_id 
JOIN cust_order co ON ol.order_id = co.order_id 
WHERE co.customer_id = <customer_id>;

Question: List all addresses of a specific customer. 
Answer:
SQL -> 
SELECT a.* 
FROM address a 
JOIN customer_address ca ON a.address_id = ca.address_id 
WHERE ca.customer_id = <customer_id>;

Medium 
Question: List all books ordered by a specific customer in a specific language. 
Answer: 
sql ->      
SELECT b.*      FROM book b      JOIN order_line ol ON b.book_id = ol.book_id      JOIN cust_order co ON ol.order_id = co.order_id      WHERE co.customer_id = <customer_id> AND b.language_id = <language_id>;     

Question: List all customers who have ordered a specific book. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
WHERE ol.book_id = <book_id>;

Question: List all books ordered in a specific city. 
Answer:
SQL -> 
SELECT b.* 
FROM book b 
JOIN order_line ol ON b.book_id = ol.book_id 
JOIN cust_order co ON ol.order_id = co.order_id 
JOIN address a ON co.dest_address_id = a.address_id 
WHERE a.city = '<city_name>';

Question: List all customers who have ordered a book from a specific author. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book_author ba ON ol.book_id = ba.book_id 
WHERE ba.author_id = <author_id>;

Question: List all customers who have ordered a book published by a specific publisher. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book b ON ol.book_id = b.book_id 
WHERE b.publisher_id = <publisher_id>;

Hard 
Question: List all customers who have ordered a book from a specific author and published by a specific publisher. 
Answer: 
sql ->      
SELECT c.*      FROM customer c      JOIN cust_order co ON c.customer_id = co.customer_id      JOIN order_line ol ON co.order_id = ol.order_id      JOIN book b ON ol.book_id = b.book_id      JOIN book_author ba ON b.book_id = ba.book_id      WHERE ba.author_id = <author_id> AND b.publisher_id = <publisher_id>;     

Question: List all customers who have ordered a book from a specific author in a specific language. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book b ON ol.book_id = b.book_id 
JOIN book_author ba ON b.book_id = ba.book_id 
WHERE ba.author_id = <author_id> AND b.language_id = <language_id>;

Question: List all customers who have ordered a book published by a specific publisher in a specific language. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book b ON ol.book_id = b.book_id 
WHERE b.publisher_id = <publisher_id> AND b.language_id = <language_id>;

Question: List all customers who have ordered a book from a specific author, published by a specific publisher, and in a specific language. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book b ON ol.book_id = b.book_id 
JOIN book_author ba ON b.book_id = ba.book_id 
WHERE ba.author_id = <author_id> AND b.publisher_id = <publisher_id> AND b.language_id = <language_id>;

Question: List all customers who have ordered a book from a specific author, published by a specific publisher, in a specific language, and shipped to a specific city. 
Answer:
SQL -> 
SELECT c.* 
FROM customer c 
JOIN cust_order co ON c.customer_id = co.customer_id 
JOIN order_line ol ON co.order_id = ol.order_id 
JOIN book b ON ol.book_id = b.book_id 
JOIN book_author ba ON b.book_id = ba.book_id 
JOIN address a ON co.dest_address_id = a.address_id 
WHERE ba.author_id = <author_id> AND b.publisher_id = <publisher_id> AND b.language_id = <language_id> AND a.city = '<city_name>';
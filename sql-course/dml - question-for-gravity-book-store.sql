Intermediate

Insert a new publisher into the publisher table.
SQL -> INSERT INTO publisher (publisher_id, publisher_name) VALUES (1, 'New Publisher');


Update a publisher’s name in the publisher table.
SQL -> UPDATE publisher SET publisher_name = 'Updated Publisher' WHERE publisher_id = 1;

Delete a publisher from the publisher table.
SQL -> DELETE FROM publisher WHERE publisher_id = 1;


Insert a new book language into the book_language table.
SQL -> INSERT INTO book_language (language_id, language_code, language_name) VALUES (1, 'en', 'English');

Update a book language’s name in the book_language table.
SQL -> UPDATE book_language SET language_name = 'Updated Language' WHERE language_id = 1;

Delete a book language from the book_language table.
SQL -> DELETE FROM book_language WHERE language_id = 1;

Insert a new address status into the address_status table.
SQL -> INSERT INTO address_status (status_id, address_status) VALUES (1, 'New Status');

Update an address status in the address_status table.
SQL -> UPDATE address_status SET address_status = 'Updated Status' WHERE status_id = 1;


Delete an address status from the address_status table.
SQL -> DELETE FROM address_status WHERE status_id = 1;

Hard 

10. Insert a new country and its address into the country and address tables.

SQL -> 
INSERT INTO country (country_id, country_name) VALUES (1, 'New Country');
INSERT INTO address (address_id, street_number, street_name, city, country_id) VALUES (1, '123', 'New Street', 'New City', 1);


Update a country’s name and its address in the country and address tables.
SQL -> 
UPDATE country SET country_name = 'Updated Country' WHERE country_id = 1;
UPDATE address SET city = 'Updated City' WHERE address_id = 1;


Delete a country and its address from the country and address tables.
SQL ->
DELETE FROM address WHERE address_id = 1;
DELETE FROM country WHERE country_id = 1;


Insert a new customer, its address, and its customer address into the customer, address, and customer_address tables.
SQL -> 
INSERT INTO customer (customer_id, first_name, last_name, email) VALUES (1, 'First', 'Last', 'first.last@example.com');
INSERT INTO address (address_id, street_number, street_name, city, country_id) VALUES (2, '456', 'Another Street', 'Another City', 1);
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES (1, 2, 1);

Update a customer’s name, its address, and its customer address in the customer, address, and customer_address tables.
SQL -> 
UPDATE customer SET first_name = 'Updated First', last_name = 'Updated Last' WHERE customer_id = 1;
UPDATE address SET city = 'Updated Another City' WHERE address_id = 2;
UPDATE customer_address SET status_id = 2 WHERE customer_id = 1 AND address_id = 2;

Delete a customer, its address, and its customer address from the customer, address, and customer_address tables.
SQL -> 
DELETE FROM customer_address WHERE customer_id = 1 AND address_id = 2;
DELETE FROM address WHERE address_id = 2;
DELETE FROM customer WHERE customer_id = 1;

Insert a new shipping method into the shipping_method table.
SQL -> 
INSERT INTO shipping_method (method_id, method_name, cost) VALUES (1, 'New Method', 10.00);


Update a shipping method’s cost in the shipping_method table.
SQL -> 
UPDATE shipping_method SET cost = 15.00 WHERE method_id = 1;

Delete a shipping method from the shipping_method table.
SQL -> 
DELETE FROM shipping_method WHERE method_id = 1;

Insert a new order status into the order_status table.
SQL ->
INSERT INTO order_status (status_id, status_value) VALUES (1, 'New Status');

Update an order status’s value in the order_status table.
SQL -> 
UPDATE order_status SET status_value = 'Updated Status' WHERE status_id = 1;

Delete an order status from the order_status table.
SQL ->
DELETE FROM order_status WHERE status_id = 1;

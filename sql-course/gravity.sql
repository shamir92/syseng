create database coba21;
use coba21;

CREATE TABLE customer (
    customer_id INT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(350),
    CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);

CREATE TABLE cust_order (
    order_id INT AUTO_INCREMENT,
    order_date DATETIME,
    customer_id INT,
    shipping_method_id INT,
    dest_address_id INT,
    CONSTRAINT pk_custorder PRIMARY KEY (order_id),
    CONSTRAINT fk_order_cust FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_order_ship FOREIGN KEY (shipping_method_id) REFERENCES shipping_method (method_id),
    CONSTRAINT fk_order_addr FOREIGN KEY (dest_address_id) REFERENCES address (address_id)
);

CREATE TABLE `publisher` (
		publisher_id INT, 
  	publisher_name varchar(400), 
  	PRIMARY KEY(publisher_id)
)  ;

CREATE TABLE `auhtor` (
		author_id INT, 
  	author_name varchar(400), 
  	PRIMARY KEY(author_id)
)  ;


CREATE TABLE `address_status` (
		status_id INT, 
  	address_status varchar(400), 
  	PRIMARY KEY(status_id)
)  ;

CREATE TABLE `country` (
		country_id INT, 
  	country_name varchar(400), 
  	PRIMARY KEY(country_id)
)  ;

CREATE TABLE `order_status` (
		status_id INT, 
  	status_value varchar(400), 
  	PRIMARY KEY(status_id)
)  ;


CREATE TABLE `shipping_method` (
		method_id INT, 
  	method_name varchar(400), 
  	cost int,
  	PRIMARY KEY(method_id)
)  ;

 CREATE TABLE `book_language` (
		language_id INT, 
  	language_code varchar(400), 
  	language_name varchar(400),
  	PRIMARY KEY(language_id)
)  ;


CREATE TABLE book (
    book_id INT,
    title VARCHAR(400),
    isbn13 VARCHAR(13),
    language_id INT,
    num_pages INT,
    publication_date DATE,
    publisher_id INT,
    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_book_lang FOREIGN KEY (language_id) REFERENCES book_language (language_id),
    CONSTRAINT fk_book_pub FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id)
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    CONSTRAINT pk_bookauthor PRIMARY KEY (book_id, author_id),
    CONSTRAINT fk_ba_book FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT fk_ba_author FOREIGN KEY (author_id) REFERENCES auhtor (author_id)
);


CREATE TABLE address (
    address_id INT,
    street_number VARCHAR(10),
    street_name VARCHAR(200),
    city VARCHAR(100),
    country_id INT,
    CONSTRAINT pk_address PRIMARY KEY (address_id),
    CONSTRAINT fk_addr_ctry FOREIGN KEY (country_id) REFERENCES country (country_id)
);

CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    CONSTRAINT pk_custaddr PRIMARY KEY (customer_id, address_id),
    CONSTRAINT fk_ca_cust FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_ca_addr FOREIGN KEY (address_id) REFERENCES address (address_id)
);



CREATE TABLE cust_order (
    order_id INT AUTO_INCREMENT,
    order_date DATETIME,
    customer_id INT,
    shipping_method_id INT,
    dest_address_id INT,
    CONSTRAINT pk_custorder PRIMARY KEY (order_id),
    CONSTRAINT fk_order_cust FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_order_ship FOREIGN KEY (shipping_method_id) REFERENCES shipping_method (method_id),
    CONSTRAINT fk_order_addr FOREIGN KEY (dest_address_id) REFERENCES address (address_id)
);

CREATE TABLE order_line (
    line_id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    price DECIMAL(5, 2),
    CONSTRAINT pk_orderline PRIMARY KEY (line_id),
    CONSTRAINT fk_ol_order FOREIGN KEY (order_id) REFERENCES cust_order (order_id),
    CONSTRAINT fk_ol_book FOREIGN KEY (book_id) REFERENCES book (book_id)
);

CREATE TABLE order_history (
    history_id INT AUTO_INCREMENT,
    order_id INT,
    status_id INT,
    status_date DATETIME,
    CONSTRAINT pk_orderhist PRIMARY KEY (history_id),
    CONSTRAINT fk_oh_order FOREIGN KEY (order_id) REFERENCES cust_order (order_id),
    CONSTRAINT fk_oh_status FOREIGN KEY (status_id) REFERENCES order_status (status_id)
);




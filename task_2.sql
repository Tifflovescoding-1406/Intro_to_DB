CREATE DATABASE IF NOT EXISTS alx_book_store;

Use alx_book_store;

CREATE TABLE IF NOT EXISTS AUTHORS (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS BOOKS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

CREATE TABLE IF NOT EXISTS CUSTOMERS (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT
);

CREATE TABLE IF NOT EXISTS ORDERS (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);


CREATE TABLE IF NOT EXISTS ORDER_DETAILS (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);
mysql> CREATE TABLE IF NOT EXISTS AUTHORS (
    ->     author_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     author_name VARCHAR(215) NOT NULL
    -> );
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> CREATE TABLE IF NOT EXISTS BOOKS (
    ->     book_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     title VARCHAR(130) NOT NULL,
    ->     author_id INT,
    ->     price DOUBLE,
    ->     publication_date DATE,
    ->     FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
    -> );
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> CREATE TABLE IF NOT EXISTS CUSTOMERS (
    ->     customer_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     customer_name VARCHAR(215) NOT NULL,
    ->     email VARCHAR(215) UNIQUE,
    ->     address TEXT
    -> );
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> CREATE TABLE IF NOT EXISTS ORDERS (
    ->     order_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     customer_id INT,
    ->     order_date DATE,
    ->     FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
    -> );
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> CREATE TABLE IF NOT EXISTS ORDER_DETAILS (
    ->     orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_id INT,
    ->     book_id INT,
    ->     quantity DOUBLE NOT NULL,
    ->     FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    ->     FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
    -> );
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> note;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'note' at line 1
mysql> notee;

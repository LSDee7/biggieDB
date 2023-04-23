CREATE KEYSPACE  learn_cassandra WITH replication = {'class': 'Networktopology', 'datacenter1': '3'};


CREATE TABLE learn_cassandra.customers(
    customer_id int NOT NULL,
    customer_name text,
    customer_mobile int,
    customer_loc text,
    PRIMARY KEY(customer_id)
);

CREATE TABLE learn_cassandra.orders(
    order_id int NOT NULL,
    customer_id int,
    date timestamp,
    PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)


);

CREATE TABLE learn_cassandra.products(
    product_id int NOT NULL,
    product_name text,
    product_description text,
    quantity int,
    PRIMARY KEY(product_id)


);

CREATE TABLE learn_cassandra.payments(
    payment_id int NOT NULL,
    customer_id,
    PRIMARY KEY(payment_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)

);

CREATE TABLE learn_cassandra.category(
    category_id int NOT NULL,
    category_name text,
    product_id int,
    PRIMARY KEY(category_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
    
);

INSERT INTO learn_cassandra.customers(customer_id, customer_name, customer_mobile, cutomer_loc)
VALUES(1, 'Thabiso', 53124322, 'Naleli'),
      (2, 'Shakes', 56343526, 'Roma'),
      (3, 'Popompo', 67878900, 'Hlotse');

INSERT INTO learn_cassandra.orders(order_id, customer_id, date)
VALUES(1, 3, 2023-03-12 ),
      (2, 5, 2023-02-20),
      (4, 7, 2022-01-11);

INSERT INTO learn_cassandra.products(product_id, product_name, product_description, quantity)
VALUES(001, 'jacket', 'black leather', 5),
      (003, 'blazer', 'brown sleeveless', 8),
      (007, 'shoes', 'school shoes', 15);

INSERT INTO learn_cassandra.payments(payment_id, customer_id)
VALUES(1, 5),
      (2, 7),
      (4, 15);

INSERT INTO learn_cassandra.category(category_id, category_name, product_id)
VALUES(1, 'shoes', 007),
      (3, 't-shirts', 006),
      (5, 'trousers', 011);

SELECT * FROM learn_cassandra.customers WHERE customer_loc = Naleli;

SELECT * FROM learn_cassandra.orders WHERE date = 2023-03-12;


SELECT * FROM learn_cassandra.products WHERE quantity <= 20;


SELECT * FROM learn_cassandra.customers WHERE customer_loc = Naleli;


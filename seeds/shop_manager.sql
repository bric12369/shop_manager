DROP TABLE IF EXISTS orders_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS items;

CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    name TEXT,
    unit_price DECIMAL(4, 2),
    quantity INT
);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    customer_name TEXT,
    order_date DATE
);

CREATE TABLE orders_items(
    order_id INT REFERENCES orders(id),
    item_id INT REFERENCES items(id)
);

INSERT INTO items (name, unit_price, quantity) VALUES ('Banana', 0.25, 8);
INSERT INTO items (name, unit_price, quantity) VALUES ('Apple', 0.40, 15);
INSERT INTO items (name, unit_price, quantity) VALUES ('Cheese', 2.25, 43);
INSERT INTO items (name, unit_price, quantity) VALUES ('Ribeye Steak', 7.50, 10);
INSERT INTO items (name, unit_price, quantity) VALUES ('Chocolate Fudge Cake', 3.50, 6);
INSERT INTO items (name, unit_price, quantity) VALUES ('Chicken Breasts', 5.50, 23);
INSERT INTO items (name, unit_price, quantity) VALUES ('Beef jerky', 2.19, 30);
INSERT INTO items (name, unit_price, quantity) VALUES ('Eggs', 2.50, 25);

INSERT INTO orders (customer_name, order_date) VALUES ('John Smith', '2026-02-03');
INSERT INTO orders (customer_name, order_date) VALUES ('June Brown', '2026-02-05');
INSERT INTO orders (customer_name, order_date) VALUES ('Jack Green', '2026-02-06');
INSERT INTO orders (customer_name, order_date) VALUES ('Bernadette Gray', '2026-02-06');

INSERT INTO orders_items (order_id, item_id) VALUES (1, 1);
INSERT INTO orders_items (order_id, item_id) VALUES (1, 1);
INSERT INTO orders_items (order_id, item_id) VALUES (1, 2);
INSERT INTO orders_items (order_id, item_id) VALUES (1, 4);
INSERT INTO orders_items (order_id, item_id) VALUES (1, 6);
INSERT INTO orders_items (order_id, item_id) VALUES (2, 3);
INSERT INTO orders_items (order_id, item_id) VALUES (2, 7);
INSERT INTO orders_items (order_id, item_id) VALUES (2, 8);
INSERT INTO orders_items (order_id, item_id) VALUES (3, 1);
INSERT INTO orders_items (order_id, item_id) VALUES (3, 5);
INSERT INTO orders_items (order_id, item_id) VALUES (3, 6);
INSERT INTO orders_items (order_id, item_id) VALUES (3, 7);
INSERT INTO orders_items (order_id, item_id) VALUES (3, 8);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 1);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 2);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 3);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 4);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 5);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 6);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 7);
INSERT INTO orders_items (order_id, item_id) VALUES (4, 8);
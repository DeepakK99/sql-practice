CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name TEXT,
    city TEXT,
    signup_date DATE
);
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    category TEXT,
    price NUMERIC
);
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount NUMERIC
);
CREATE TABLE shipments (
    shipment_id SERIAL PRIMARY KEY,
    order_id INT,
    shipped_date DATE,
    delivery_date DATE,
    status TEXT
);
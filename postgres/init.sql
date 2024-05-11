-- create a commerce schema
CREATE SCHEMA commerce;

-- Use commerce schema
SET
    search_path TO commerce;


-- create a users table
CREATE TABLE users (
    id int PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL
);

ALTER TABLE
    products REPLICA IDENTITY FULL;

ALTER TABLE
    users REPLICA IDENTITY FULL;

CREATE TABLE attributed_checkouts (
    checkout_id VARCHAR PRIMARY KEY,
    user_name VARCHAR,
    product_id VARCHAR,
    payment_method VARCHAR,
    total_amount DECIMAL(5, 2),
    shipping_address VARCHAR,
    billing_address VARCHAR,
    user_agent VARCHAR,
    ip_address VARCHAR,
    click_time TIMESTAMP
);

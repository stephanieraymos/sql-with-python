-- create the database
DROP DATABASE IF EXISTS week1_workshop;
CREATE DATABASE week1_workshop;
-- connect via psql
\c week1_workshop

-- database configuration
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET default_tablespace = '';
SET default_with_oids = false;


---
--- DROP tables
---

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS suppliers;
-- TODO drop more tables here...


---
--- CREATE tables
---

CREATE TABLE products (
    product_id SERIAL,
    product_name TEXT NOT NULL,
    supplier_id INT,
    category_id INT,
    discontinued SMALLINT NOT NULL,
    PRIMARY KEY(product_id)
);

CREATE TABLE suppliers (
    supplier_id SERIAL,
    company_name TEXT NOT NULL,
    PRIMARY KEY(supplier_id)
);

-- TODO create more tables here...


---
--- Add foreign key constraints
---

ALTER TABLE products
ADD CONSTRAINT fk_products_suppliers 
FOREIGN KEY (supplier_id) 
REFERENCES suppliers;

-- TODO create more constraints here...


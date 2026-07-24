CREATE TABLE IF NOT EXISTS orders_products (
    orders_id INTEGER REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
    products_id INTEGER REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (orders_id, products_id)
);

CREATE TABLE IF NOT EXISTS locations_products (
    locations_id INTEGER REFERENCES locations(id) ON UPDATE CASCADE ON DELETE CASCADE,
    products_id INTEGER REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (locations_id, products_id)
);

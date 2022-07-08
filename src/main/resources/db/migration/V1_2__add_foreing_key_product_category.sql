ALTER TABLE
    products
ADD
    COLUMN product_category_id BINARY(16) NOT NULL
AFTER
    id;

ALTER TABLE
    products_categories
ADD
    INDEX idx_product_category_id (id);

ALTER TABLE
    products
ADD
    CONSTRAINT fk_product_category_id FOREIGN KEY (product_category_id) REFERENCES products_categories(id) ON DELETE CASCADE ON UPDATE CASCADE;
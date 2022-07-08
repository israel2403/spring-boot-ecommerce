INSERT INTO
    `full-stack-ecommerce`.products_categories (id, category_name)
VALUES
    (
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        'BOOKS'
    );

INSERT INTO
    `full-stack-ecommerce`.products_categories (id, category_name)
VALUES
    (
        UUID_TO_BIN('f00b6f66-ff04-11ec-b939-0242ac120002'),
        'second_category'
    );

INSERT INTO
    products (
        id,
        sku,
        name,
        description,
        image_url,
        active,
        units_in_stock,
        unit_price,
        product_category_id,
        date_created
    )
VALUES
    (
        UUID_TO_BIN('7ceea070-9244-41eb-9f5f-2bbbef4a2307'),
        'BOOK-TECH-1000',
        'JavaScript - The Fun Parts',
        'Learn JavaScript',
        'assets/images/products/placeholder.png',
        1,
        100,
        19.99,
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        NOW()
    );

INSERT INTO
    products (
        id,
        sku,
        name,
        description,
        image_url,
        active,
        units_in_stock,
        unit_price,
        product_category_id,
        date_created
    )
VALUES
    (
        UUID_TO_BIN('8526cba6-46fc-4d0c-a87f-98421497a0b8'),
        'BOOK-TECH-1001',
        'Spring Framework Tutorial',
        'Learn Spring',
        'assets/images/products/placeholder.png',
        1,
        100,
        29.99,
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        NOW()
    );

INSERT INTO
    products (
        id,
        sku,
        name,
        description,
        image_url,
        active,
        units_in_stock,
        unit_price,
        product_category_id,
        date_created
    )
VALUES
    (
        UUID_TO_BIN('0b329f30-0377-4f0c-a01f-a683d3f5067f'),
        'BOOK-TECH-1002',
        'Kubernetes - Deploying Containers',
        'Learn Kubernetes',
        'assets/images/products/placeholder.png',
        1,
        100,
        24.99,
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        NOW()
    );

INSERT INTO
    products (
        id,
        sku,
        name,
        description,
        image_url,
        active,
        units_in_stock,
        unit_price,
        product_category_id,
        date_created
    )
VALUES
    (
        UUID_TO_BIN('926fbfb1-d6dc-4542-b3c1-c2d7e6cf9b67'),
        'BOOK-TECH-1003',
        'Internet of Things (IoT) - Getting Started',
        'Learn IoT',
        'assets/images/products/placeholder.png',
        1,
        100,
        29.99,
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        NOW()
    );

INSERT INTO
    products (
        id,
        sku,
        name,
        description,
        image_url,
        active,
        units_in_stock,
        unit_price,
        product_category_id,
        date_created
    )
VALUES
    (
        UUID_TO_BIN('edb79cad-5e1b-4c8a-99f2-93e217ce57c0'),
        'BOOK-TECH-1004',
        'The Go Programming Language: A to Z',
        'Learn Go',
        'assets/images/products/placeholder.png',
        1,
        100,
        24.99,
        UUID_TO_BIN('f88fd032-ff04-11ec-b939-0242ac120002'),
        NOW()
    );
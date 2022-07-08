CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`products_categories`(
    `id` BINARY(16) NOT NULL,
    `category_name` VARCHAR(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;
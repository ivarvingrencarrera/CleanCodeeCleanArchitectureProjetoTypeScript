DROP TABLE ecommerce.coupon;
DROP TABLE ecommerce.product;

CREATE TABLE ecommerce.product (
    id_product integer,
    description text,
    price numeric
);

INSERT INTO ecommerce.product (id_product, description, price) values(1, 'A', 1000);
INSERT INTO ecommerce.product (id_product, description, price) values(2, 'B', 5000);
INSERT INTO ecommerce.product (id_product, description, price) values(3, 'C', 30);

CREATE TABLE ecommerce.coupon (
    code text,
    percentage numeric
);

INSERT INTO ecommerce.coupon (code, percentage) values('VALE20', 20);
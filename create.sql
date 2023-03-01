DROP TABLE ecommerce.coupon;
DROP TABLE ecommerce.product;

CREATE TABLE ecommerce.product (
    id_product integer,
    description text,
    price numeric,
    width integer,
    height integer,
    length integer,
    weight numeric
);

INSERT INTO ecommerce.product (id_product, description, price, width, height, length, weight) values(1, 'A', 1000, 50, 30, 10, 3);
INSERT INTO ecommerce.product (id_product, description, price, width, height, length, weight) values(2, 'B', 5000, 50, 50, 50, 22);
INSERT INTO ecommerce.product (id_product, description, price, width, height, length, weight) values(3, 'C', 30, 10, 10, 10, 0.9);
INSERT INTO ecommerce.product (id_product, description, price, width, height, length, weight) values(4, 'C', 30, -10, 10, 10, 0.9);

CREATE TABLE ecommerce.coupon (
    code text,
    percentage numeric,
    expire_date timestamp
);

INSERT INTO ecommerce.coupon (code, percentage, expire_date) values('VALE20', 20, '2023-10-01T10:00:00');
INSERT INTO ecommerce.coupon (code, percentage, expire_date) values('VALE10', 10, '2022-10-01T10:00:00');
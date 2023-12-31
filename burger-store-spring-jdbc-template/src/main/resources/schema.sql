-- CREATE MAIN TABLES

CREATE TABLE IF NOT EXISTS burger
(
    id          SERIAL PRIMARY KEY NOT NULL,
    name        varchar(10),
    datecreated DATE,
    order_id    INT
);

CREATE TABLE IF NOT EXISTS "order"
(
    id                 SERIAL PRIMARY KEY NOT NULL,
    placedAt           DATE,
    city               varchar(50),
    street             varchar(100),
    apartment          varchar(10),
    credit_card_number varchar(16)
);

CREATE TABLE IF NOT EXISTS ingredients
(
    id         INT PRIMARY KEY NOT NULL,
    burger_id  INT,
    lettuce    boolean,
    bacon      boolean,
    tomato     boolean,
    onion      boolean,
    pickles    boolean,
    cheese     boolean,
    mayonnaise boolean,
    ketchup    boolean
);

-- ADD FOREIGN KEYS

ALTER TABLE burger
    ADD FOREIGN KEY (order_id) REFERENCES "order" (id);
ALTER TABLE ingredients
    ADD FOREIGN KEY (burger_id) REFERENCES burger (id);


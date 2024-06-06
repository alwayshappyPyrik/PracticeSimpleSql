create table test.customers
(
    id           bigserial primary key,
    firstname    varchar(255) NOT NULL,
    surname      varchar(255) NOT NULL,
    age          smallint     NOT NULL check (age > 0 AND age < 130),
    phone_number varchar(50)
);

create table test.orders
(
    id           bigserial primary key,
    date         date         NOT NULL DEFAULT now(),
    customer_id  bigint references test.customers (id) ON DELETE CASCADE,
    product_name varchar(500) NOT NULL,
    amount       real
);

insert
into test.customers (id, firstname, surname, age, phone_number)
values (1, 'Yaroslav', 'Pyrikov', 31, ''),
       (2, 'Vasiliy', 'Ogurсhov', 31, ''),
       (3, 'Vania', 'Poddupniy', 1, ''),
       (4, 'alexey', 'Kazakov', 40, '');

insert
into test.orders (id, customer_id, product_name, amount)
values (1, 1, 'Майка', 300),
       (2, 2, 'Свитер', 1500),
       (3, 3, 'Куртка', 10000),
       (4, 4, 'Кроссовки', 5000);

select product_name
from test.orders
         INNER JOIN test.customers cus ON orders.customer_id = cus.id
where firstname = lower('ALEXEY');



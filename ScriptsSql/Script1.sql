create schema test;

set schema 'test';

create table test.persons
(
    firstname      varchar(255),
    surname        varchar(255),
    age            smallint,
    phone_number   varchar(50),
    city_of_living varchar(255) not null,
    primary key (firstname, surname, age)
);

insert
into test.persons (firstname, surname, age, phone_number, city_of_living)
values ('Yaroslav', 'Pyrikov', 31, '', 'Moscow');

insert
into test.persons (firstname, surname, age, phone_number, city_of_living)
values ('Vasiliy', 'Ogurсhov', 31, '', 'Kazan');

insert
into test.persons (firstname, surname, age, phone_number, city_of_living)
values ('Roberto', 'Carlos', 40, '', 'Brazil');

insert
into test.persons (firstname, surname, age, phone_number, city_of_living)
values ('Vania', 'Poddupniy', 1, '', 'Volgograd');


select firstname, surname
from test.persons p
where city_of_living = 'Moscow';

select *
from test.persons p
where age > 27
order by age desc;

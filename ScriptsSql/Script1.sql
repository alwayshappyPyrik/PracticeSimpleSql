create schema test;

set schema 'test';

create table test.persons
(
    firstname      text,
    surname        text,
    age            smallint,
    phone_number   text,
    city_of_living text not null,
    primary key (firstname, surname, age)

);

insert
into test.persons (firstname, surname, age, phone_number, city_of_living)
values ('Yaroslav', 'Pyrikov', 31, '', 'Moscow');

insert
into persons (firstname, surname, age, phone_number, city_of_living)
values ('Vasiliy', 'Ogurсhov', 31, '', 'Kazan');

insert
into persons (firstname, surname, age, phone_number, city_of_living)
values ('Roberto', 'Carlos', 40, '', 'Brazil');

insert
into persons (firstname, surname, age, phone_number, city_of_living)
values ('Vania', 'Poddupniy', 1, '', 'Volgograd');


select firstname, surname
from persons p
where city_of_living = 'Moscow';

select firstname, surname
from persons p
where age > 27
order by age desc;

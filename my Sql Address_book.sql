##UC-1 Creating 'address_book' database 
show databases;
create database address_book;
use address_book;
select database();

##UC-2 Creating table for address_book..
create table address_book(
first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int not null,
phone_number decimal(10,0) not null,
email varchar(50) not null,
name_type varchar(100) DEFAULT NULL
);
select * from address_book;
describe address_book;
##UC-3 to 6 Inserting,editing, and deleting of Contact details of person..
insert into address_book (first_name, last_name, address, city, state, zip, phone_number, email, name_type) values
( 'Jackson', 'Briggs', 'city Nv street 69', 'Las Vegas', 'NV', '586216', '7862549256', 'jackbriggs56@gmail.com', 'Friend'),
( 'Katie', 'Watson', 'street66', 'Oklahoma', 'CO', '526945', '6925843186', 'katieswat2209@yahoomail.com', 'NULL'),
( 'Jack', 'Sparrow', '30 Albert Embankment', 'Vauxhall', 'London', '624598', '5986321789', 'jacksparrow1869@rediffmail.com', 'Family');

##UC-7 The size od address_book according to count by type...
select count(name_type) from address_book group by name_type;
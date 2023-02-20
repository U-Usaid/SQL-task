create table employees(
id int  not null identity primary key,
name text,
age integer,
salary float);

insert into employees (name, age, salary)
values ('John Smith', 32, 55000.50);

insert into employees (name, age, salary)
values ('Sarah Johnson', 28, 48000.75);

insert into employees (name, age, salary)
values ('Michael Brown', 41, 71000.00);

select * from employees;
drop table employees;

update employees
set salary = 31000.49
where salary < 55000;





create table books (
id int  not null identity primary key,
title text,
author text,
price float);

insert into books (title, author, price)
values ('The Great Gatsby', 'F. Scott Fitzgerald', 10.99);

insert into books (title, author, price)
values ('To Kill a Mockingbird', 'Harper Lee', 12.50);

insert into books (title, author, price)
values ('1984', 'George Orwell',8.99);

insert into books (title, author, price)
values ('Pride and Prejudice', 'Jane Austen', 9.75);

select * from books;
drop table books;




create table student (
id int not null identity primary key,
name text,
age int,
major text,
GPA float);

insert into student (name, age, major, GPA)
values ('John Smith', 22, 'Computer Science', 3.8);

insert into student (name, age, major, GPA)
values ('Sarah Johnson', 20,, 'Biology', 3.2);

insert into student (name, age, major, GPA)
values ('Michael Brown', 24, 'Business', 3.5);

insert into student (name, age, major, GPA)
values ('Emily Wilson', 21, 'English', 3.9);

insert into student (name, age, major, GPA)
values ('David Lee', 23, 'Psychology', 3.6);

select * from student;

alter table student
add student_email varchar(50);

update student
set student_email = 'jhon@gmail.com'
where id = 1;

update student
set student_email = 'sarah@gmail.com'
where id = 2;

update student
set student_email = 'michael@gmail.com'
where id = 3;

update student
set student_email = 'emily@gmail.com'
where id = 4;

update student
set student_email = 'david@gmail.com'
where id = 5;

delete 
from student
where id = 5;



create table customers (
id int primary key,
name text,
email text,
phone_number text);

insert into customers (id, name, email, phone_number)
values (1, 'John Smith', 'john.smith@example.com', '555-555-1212');

insert into customers (id, name, email, phone_number)
values (2, 'Jane Doe', 'jane.doe@example.com', '555-555-2323');

insert into customers (id, name, email, phone_number)
values (3, 'Bob Brown', 'bob.brown@example.com', '555-555-3434');

select * from customers;




create table Products (
id int primary key,
product_name text,
category text,
price decimal,
quantity_in_stock int);

insert into Products (id, product_name, category, price, quantity_in_stock)
values (1, 'iPhone', 'Electronics', 999.99, 100);

insert into Products (id, product_name, category, price, quantity_in_stock)
values (2, 'Samsung Galaxy', 'Electronics', 799.99, 50);

insert into Products (id, product_name, category, price, quantity_in_stock)
values (3, 'Nike Air Max', 'Shoes', 119.99, 200);

select * from Products;
select quantity_in_stock from Products;





create table movies (
movie_id int primary key,
movie_title text,
director text,
genre text,
release_year int);

insert into movies (movie_id, movie_title, director, genre, release_year)
values (1, 'The Shawshank Redemption', 'Frank Darabont', 'Drama', 1994);

insert into movies (movie_id, movie_title, director, genre, release_year)
values (2, 'The Godfather', 'Francis Ford Coppola', 'Drama', 1972);

insert into movies (movie_id, movie_title, director, genre, release_year)
values (3, 'The Dark Knight', 'Christopher Nolan', 'Action', 2008);

select * from movies;
select movie_title from movies;




create table inventory (
product_id int primary key,
product_name text,
supplier text,
category text,
quantity int,
price real);

insert into inventory (product_id, product_name, supplier, category, quantity, price)
values (1, 'iPhone 13', 'Apple Inc.', 'Electronics', 10, 999.99);

insert into inventory (product_id, product_name, supplier, category, quantity, price)
values (2, 'Kindle Paperwhite', 'Amazon.', 'Books & Media', 20, 129.99);

insert into inventory (product_id, product_name, supplier, category, quantity, price)
values (3, 'Nike Air Max 90', 'Nike Inc.', 'Apparel', 5, 119.99);

select * from inventory;
select supplier from inventory;











create table sales (
sale_id int primary key,
sale_date date,
sale_amount decimal(10,2));

insert into sales (sale_id, sale_date, sale_amount)
values (1,'2022-01-01', 100.00),
  (2,'2022-01-02', 50.00),
  (3,'2022-01-15', 75.00),
  (4,'2022-02-01', 200.00),
  (5,'2022-02-05', 150.00),
  (6,'2022-02-20', 175.00);

select * from sales;

select month(sale_date) as month, sum(sale_amount) as totalSales from sales group by month(sale_date) order by month(sale_date);

select avg(sale_amount) as avgSales from sales;

select count (sale_id) as "ProductsSold" from sales;

select min(sale_amount) as "lowestAmount", max(sale_amount) as "highestAmount" from sales;

select * from sales order by sale_id desc;

select * from sales where sale_date between '2022-01-01' and '2022-02-01';
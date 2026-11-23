create database employee;
use Employee;
create table Department ( department_ID int primary key, Department_name Varchar(100));
create table location ( location_ID int Primary key, location varchar(30));
create table employee ( employeeID int primary key, employee_name varchar(50), gender enum("M","F"), age int, 
hire_date date, designation varchar(100),department_ID int  , location_id int, salary decimal(10,2));
alter table employee add (email_ID VARCHAR(50));
alter table employee modify column designation varchar(150);
alter table employee drop column age;
alter table employee rename column hire_date to date_of_joining;
rename table department to Department_Info;
rename table location to Locations;
truncate table employee;
drop table employee;
drop database employee;

create database Employee;
use employee;

Create table Department (Department_ID int  primary key, department_name varchar(50)  not null  unique);
create table location ( location_ID int Primary key auto_increment, location varchar(30) not null unique);
create table employee ( employeeID int primary key , employee_name varchar(50) not null , gender enum("M","F"),  
age  int check (age>= 18), hire_date date default (current_date), designation varchar(100),
department_ID int  , location_id int, salary decimal(10,2));

alter table employee  add 
    CONSTRAINT fk_emp_dept FOREIGN KEY (department_id)
        REFERENCES department (department_id), add
    CONSTRAINT fk_emp_loc FOREIGN KEY (location_id)
        REFERENCES location (location_id);
        select * from employee;
        
        

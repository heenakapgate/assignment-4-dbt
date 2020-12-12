create database assign;
use assign;
show databases;
create table Department (dept_id int(20), ept_name varchar(50),
 primary key(dept_id) );
 show tables;
 desc Department;
 select * from Department;

 insert into Department(dept_id, ept_name) values ( 1, 'Finance');
insert into department values (2,'Traning');
insert into department values (3, 'Marketing');
 select * from Employee;
 create table Employee(empid int(50), emp_name varchar(50),dept_id int(20),salary int (50), manager int (50));

 insert into Employee values(1, 'Arun',1 ,8000, 4);
 insert into Employee values(2, 'kiran',1 ,8000, 4);
 insert into Employee values(3, 'Scott',1 ,8000, 4);
 insert into Employee values(4, 'Max',2 ,8000, null );
 insert into Employee values(5, 'Jack',2 ,8000, 4);
insert into Employee values(6, 'King', null, 8000, 1);
 
create table Employee1(empid int(50), emp_name varchar(50),dept_id int(20),salary int (50), manager int (50));

 insert into Employee values(11, 'Arun',1 ,8000, 4);
 insert into Employee values(22, 'kiran',1 ,8000, 4);
 insert into Employee values(33, 'Scott',1 ,8000, 4);
 insert into Employee values(44, 'Max',2 ,8000, null );
 insert into Employee values(5, 'Jack',2 ,8000, 4);
insert into Employee values(6, 'King', null, 8000, 1);


show tables;
desc employee;
desc Department;

 alter table Department add primary key (dept_id);
  alter table Employee
 add foreign key (dept_id) REFERENCES Department (dept_id);
 alter table employee modify empid int NOT NULL ;
 
 select * from author order by author name;
 
 select dept_id , sum(salary) from Employee group by dept_id;
 select dept_id, sum(salary) from Employee group by dept_id having sum(salary)>17000;
 
 select dept_id ,sum(salary) from Employee group by dept_id having sum(salary) >18000;
 select dept_id, sum(salary) from Employee group by dept_id having sum(salary)<20000;
  
  
  
  select ept_name,emp_name from Department inner join employee on Department.dept_id = employee.empid;
  
  select* from Department join employee on Department.dept_id = employee.empid;
   select dept_id ,sum(salary) from Employee group by dept_id;
   select ept_name,emp_name from Department left join employee on Department.dept_id = employee.empid;
    select ept_name,emp_name from Department right join employee on Department.dept_id = employee.empid;
    select emp_name,manager from employee ;

select  * from employee1 union select  * from employee;

select  * from employee where salary = (select salary from employee where emp_name = 'Arun');

   select  * from employee where empid = (select salary from employee where emp_name = 'max' );
   select  * from employee where salary IN (select MIN(salary) from Employee group by dept_id );
   
  -- update salary 15008 from employee where salary = (select salary from employee where emp_name = 'jack' );
  update  employee set salary = 15000 where emp_name = "max";
  set sql_safe_updates = 0;
   
   select * from employee;
   
  
 
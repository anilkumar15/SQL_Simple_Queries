-- Create Table


Create table Person (
  PersonId int Primary Key,
  PersonName varchar (200),
  Address varchar(20),
  City varchar(100),
  Age int
) 


-- Create Table

Create table Employee (
  EmpNo int Primary Key,
  DeptName varchar(100) Not Null,
  Designation varchar(100) Not Null,
  Salary int Not Null,
  PersonId int Not null references Person(PersonId) 
)

-- Alter Table to add column


Alter Table Person Add  Email Varchar(100)

-- Alter Table alter column constraint



Alter table Person alter column PersonName varchar(200) Not Null 

-- Alter Table alter size of the column


Alter Table Person alter Column Address varchar(300) Not null 

-- Insert Rows in table


insert into Person Values(101,'Ajay', 'Aavdhan', 'Pune', 41, 'a@b.com') 

insert into Person Values(102,'Bjay', 'Bavdhan', 'Pune', 42, 'c@d.com') 

insert into Person Values(103,'Cjay', 'Cavdhan', 'Mumbai', 43, 'e@f.com') 

insert into Person Values(104,'DJay', 'Davdhan', 'Mumbai', 44, 'g@h.com') 

insert into Person Values(104,'Akask', 'Eavdhan', 'Nagpur', 45, 'i@j.com') 

insert into Person Values(105,'Amar', 'Favdhan', 'Nagpur', 46, 'k@l.com') 

insert into Person Values(106,'Amit', 'Gavdhan', 'Nashik', 47, 'm@n.com') 

insert into Person Values(107,'Anil', 'Havdhan', 'Nashik', 48, 'o@p.com') 

insert into Person Values(108,'Binod', 'Iavdhan', 'Kolhapur', 49, 'q@r.com') 

insert into Person Values(109,'Biswas', 'Javdhan', 'Kolhapur', 50, 's@t.com') 

insert into Person Values(110,'Bhim', 'Kavdhan', 'Mumbai', 51, 'u@v.com') 

insert into Person Values(111,'Chaitanya', 'Lavdhan', 'Nagpur', 52, 'w@x.com') 

insert into Person Values(112,'Chinmay', 'Mavdhan', 'Nashik', 53, 'y@z.com') 

insert into Person Values(113,'Chirag', 'Navdhan', 'Kolhapur', 54, 'a@c.com') 

insert into Person Values(114,'Chintaman', 'Oavdhan', 'Nashik', 55, 'd@d.com') 

insert into Person Values(115,'Deepak', 'Pavdhan', 'Kolhapur', 56, 'g@e.com') 

insert into Person Values(116,'Dilip', 'Qavdhan', 'Yavatmal', 57, 's@r.com') 

insert into Person Values(117,'Dinesh', 'Ravdhan', 'Solapur', 58, 'a@m.com') 

insert into Person Values(118,'Eshwar', 'Savdhan', 'Latur', 59, 'a@s.com') 

insert into Person Values(119,'Eknath', 'Tavdhan', 'Yavatmal', 60, 'h@i.com') 

insert into Person Values(120,'Elesh', 'Uavdhan', 'Latur', 61, 'q@o.com') 



-- Inserting record in Employee

Insert into Employee values(10001, 'IT', 'Manager', 12000, 101)

Insert into Employee values(10002, 'HR', 'Manager', 13000, 103)

Insert into Employee values(10003, 'TR', 'Manager', 11000, 103)

Insert into Employee values(10004, 'AD', 'Manager', 15000, 104)

Insert into Employee values(10005, 'HR', 'Lead', 14000, 105)

Insert into Employee values(10006, 'TR', 'Lead', 17000, 106)

Insert into Employee values(10007, 'AD', 'Lead', 15000, 107)

Insert into Employee values(10008, 'IT', 'Engineer', 18000, 108)

Insert into Employee values(10009, 'HR', 'Engineer', 11000, 109)

Insert into Employee values(10010, 'TR', 'Engineer', 19000, 110)

Insert into Employee values(10011, 'AD', 'Engineer', 20000, 111)

Insert into Employee values(10012, 'IT', 'Developer', 21000, 112)

Insert into Employee values(10013, 'HR', 'Developer', 23000, 113)

Insert into Employee values(10014, 'TR', 'Developer', 22000, 114)

Insert into Employee values(10015, 'AD', 'Developer', 75000, 115)

Insert into Employee values(10016, 'IT', 'Architect', 24000, 116)

Insert into Employee values(10017, 'HR', 'Trainer', 54000, 117)

Insert into Employee values(10018, 'TR', 'Trainer', 27000, 118)

Insert into Employee values(10019, 'AD', 'Trainer', 76000, 119)

Insert into Employee values(10020, 'IT', 'Manager', 12000, 120)


-- Using Select Query
-- Retrive Persons having age motre than 54


Select * from Person
where Age > 54

-- select specific columns from the table using query
-- where the PersonName startswith specific characters


Select * from Person
where PersonName Like 'E%' 


-- select top (n) records


select top(4) * from Person

-- select distinct from the Person Table


select DISTINCT City  from Person

-- Select Records from Table Order By PersonName


select * from Person Order By PersonName

-- select Records from Table Order By Person Descending


select * from Person Order By PersonName Desc

-- Sorting on Multiple Columns


Select PersonName, City,Age from Person
Order By City,
Age Desc

-- Join Queries

select EmpNo, PersonName, DeptName, City, Designation,  Salary
from Person, Employee
where Person.PersonId = Employee.PersonId

-- group by Query 


select DeptName, sum(Salary) as Salary 
from Employee
group by (DeptName)

-- second max salary


select  max(Salary) as Salary 
from Employee
Where DeptName='IT' and Salary < (Select Max(Salary) from Employee)

-- Create Table


Create Table Product (
  ProductId int Primary Key,
  ProductName varchar(100) not null,
  CategoryName varchar(100) not null,
  Price int not null
)

insert into Product Values(301, 'Laptop', 'Electronics', 1200000)

insert into Product Values(302, 'Iron', 'Electrical', 34000)

insert into Product Values(303, 'Lays', 'Food', 30)

insert into Product Values(304, 'Desktop', 'Electronics', 72000)

insert into Product Values(305, 'Mixer', 'Electrical', 1000)

insert into Product Values(306, 'Tablet', 'Electronics', 6000)

insert into Product Values(307, 'Biscuts', 'Food', 20)

insert into Product Values(308, 'Router', 'Electronics', 6000)

insert into Product Values(309, 'Air Condition', 'Electrical', 7000)

insert into Product Values(310, 'RAM', 'Electronics', 90000)


-- using IN Operator


select ProductName, Price, CategoryName
from Product
where Price IN (120000, 7000, 6000)

-- Using BETWEEN Operator


select ProductName, Price, CategoryName
from Product
where Price Between 34000 AND 100000

--  Using INNER Join
-- Inner join produces a data set that includes rows from the left table which have matching rows from the 
-- right table.


select PersonName, Age, DeptName, Designation
from Person
Inner Join Employee 
ON
Person.PersonId = Employee.PersonId

-- Left Join
--Left join selects data starting from the left table and 
--matching rows in the right table. The left join returns 
--all rows from the left table and the matching rows from the 
--right table. If a row in the left table does not have 
--a matching row in the right table, the columns of 
--the right table will have nulls.


select PersonName, Age, DeptName, Designation
from Person
Left Join Employee 
ON
Person.PersonId = Employee.PersonId

-- Right Join
-- The right join or right outer join selects data starting from 
--the right table. It is a reversed version of the left join.

-- The right join returns a result set that contains all 
--rows from the right table and the matching rows in the left table. 
--If a row in the right table that does not have a matching row in 
--the left table, all columns in the left table will contain nulls.


select PersonName, Age, DeptName, Designation,Salary
from Person
Right Join Employee 
ON
Person.PersonId = Employee.PersonId

-- Full Join
-- The full outer join or full join returns a result set that contains all 
--rows from both left and right tables, with the matching rows from 
--both sides where available. In case there is no match, 
--the missing side will have NULL values.


select PersonName, Age, DeptName, Designation,Salary
from Person
FULL Join Employee 
ON
Person.PersonId = Employee.PersonId

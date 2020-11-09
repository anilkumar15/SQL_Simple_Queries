-- Create a Stored Procedure to receive all records from Person Table
Create Procedure GetPersons
As
Begin
	Select * from Person
End
-- Execute the Stored Procedure
Exec GetPersons
GO

-- Stored Procedure with output parameters

 



-- retrive records from Table base on Input Parameters in Stored Proc

Create Procedure GetPersonsByCity 
	@City Varchar(100)
As
Begin
	Select * from Person where City = @City
End
Go
Exec GetPersonsByCity @City ='Pune'
GO

-- Insert record into table

Create procedure InsertPerson 
@PersonId int,
@PersonName varchar(200),
@Address varchar(300),
@City varchar(100),
@Age int, 
@Email varchar(100)
As
Begin
  INSERT INTO Person
              (PersonId, PersonName, Address, City, Age, Email)
       VALUES
               (@PersonId, @PersonName, @Address, @City, @Age, @Email)
End
Go

Exec InsertPerson 
@PersonId=125, @PersonName='Kartik', @Address='JK Nagar', @City='Yavatmal', @Age=43, @Email='e@h.com'
GO

-- Stored Procedure 
Create Procedure GetSumSalaryByDeptName 
@DeptName varchar(100) 
As
DECLARE @SumSalary int
Begin
	 Select  @SumSalary = sum(Salary) from Employee
	 where DeptName=@DeptName
	return @SumSalary
End
Go

-- Execute the Stored Procedure
Declare @SumSalary int
Exec @SumSalary = GetSumSalaryByDeptName 'IT'
Select @SumSalary



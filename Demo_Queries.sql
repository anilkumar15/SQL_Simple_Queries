-- Create Database

Create Database ExpensesRHeal
-- Drop Database
-- Drop database Expenses

-- Set the ExpensesRHeal Database context to create all tables in it

use ExpensesRHeal

-- Create Table
Create Table ExpensesType(
  ExpensesTypeId integer Primary Key,
  ExpensesTypeName varchar(100)
)



Create Table PaymentMode (
  PaymentModeId integer Primary Key,
  PaymentModeName varchar(100)
)
-- alter table by adding new column in it
alter table PaymentMode
Add PaymentModeDetails varchar(200)

-- Drop Table
 Drop Table PaymentMode





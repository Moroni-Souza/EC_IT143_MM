--EC_IT143_6.3_fwf_s4_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I will use an for insert to get all new customers that are added to the 
-- table and have a history by company name customer name and date of first contact.
--For this query I need to create some temporary columns to be inserted into the table called "inserted"
-- https://www.youtube.com/watch?v=jVbj72YO-8s
-- https://stackoverflow.com/questions/3358975/create-trigger-in-sql-server

--Drop table if exists NewCustomerHistory
Create Table NewCustomerHistory(
	CustomerName Varchar(50),
	ContactName Varchar(50),
	FirstContatDate DateTime
);
GO 

--Drop Trigger trg_NewCustomers
Create Trigger trg_NewCustomers
ON [dbo].[tbl_w3_schools_customers]
FOR Insert
AS
/*****************************************************************************************************************
NAME: trg_NewCustomers
PURPOSE: Create a trigger that works and helps me maintain a customer history.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/13/2025    Moroni           1. Script for EC_IT_143 with a demonstration of a working trigger
					  Mirandolli
		
RUNTIME: 
1s

NOTES: 
This query keeps an automatic record of customers who have contact with our company, in the future we will be
able to know how long our relationship with the customer lasts.
 
******************************************************************************************************************/

BEGIN
	Declare @CustomerName varchar(50),
			@FirstContatDate datetime,
			@ContactName varchar(50)

	Select  @CustomerName = CustomerName,
			@FirstContatDate = ContactDate,
			@ContactName = ContactName
			From Inserted
			
	Insert Into NewCustomerHistory (CustomerName, ContactName , FirstContatDate)
	Values (@CustomerName,@ContactName, @FirstContatDate)
END;


-- Q1: How do I create a trigger to show customer history and the day we made the first contact?
-- A1: our trigger needs to copy only the new inserted data and automatically send it to the other record table,
--this trigger above does this using insert into the new table

SELECT GETDATE() AS my_date;


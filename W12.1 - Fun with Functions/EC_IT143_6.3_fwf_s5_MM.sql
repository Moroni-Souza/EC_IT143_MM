--EC_IT143_6.3_fwf_s5_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I need to apply Upper in the first letter and then apply the lower to the following remaining letters
-- To go from this:"paTRicK" to this:"Patrick" I need to use
-- the functions "UPPER" and "LOWER" but I also need to tell these functions where I want them to perform the change 
-- in my words

-- I googled "capitalizing only the first letter in SQL server" and went to Stack Overflow to learn more about the topic.
-- https://stackoverflow.com/questions/15290754/sql-capitalize-first-letter-only



Create Function fun_firs_cap(@CustomerID int)
Returns Varchar(60)
As

/*****************************************************************************************************************
NAME:  fun_firs_cap
PURPOSE: learn how to create a function

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/13/2025   MORONI           1.  Script created to show how to use a function within SQL Server
                     MIRANDOLLI

RUNTIME: 
1s

NOTES: I learned how to create scalar functions from this video
https://www.youtube.com/watch?v=hYon51UgBv4
 
******************************************************************************************************************/

	BEGIN

		Declare @FirstinCap varchar(100)

		Select @FirstinCap = Upper(Left(CustomerName, 1)) + Lower(Substring(CustomerName,2,Len(CustomerName)))
		From [dbo].[t_w3_schools_customers]
		Where CustomerID = @CustomerID

		Return @FirstinCap

	END;
GO

Select	CustomerName, 
	[dbo].[fun_firs_cap](CustomerID) AS FirstLetterCap
From 
	[dbo].[t_w3_schools_customers]


-- Q1: How can I create a Scalar Function?
-- A1: After some research I found the method to create functions and learned how to make them work, 
--the scalar function is a method that helps me find a single piece of information in the table, in this function
--that I created it is linked to the person's ID which makes it easy to use an ID column to identify the row of 
--information that will be manipulated by my function.

SELECT GETDATE() AS my_date;
--EC_IT143_6.3_fwf_s5_MM
-- Q: How to extract first name from contact name?
-- A: CustomerName = Alejandra Camino - > Alejandra 
-- "Through Google search within the site Stack overflow i found some information about]
--extracting parts from a person's name."
-- https://stackoverflow.com/questions/22289932/extracting-lastname-firstname-middle-names-from-a-combined-field



Create Function fun_FirstName
(@v_combined_name as Varchar(500)
)
Returns Varchar(100)

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

		Declare @v_first_name as varchar(100);

		Set @v_first_name = Left(@v_combined_name, Charindex(' ',@v_combined_name + ' ') -1); 

		Return @v_first_name;

	END;
GO


-- Q1: What is a Scalar Function?
-- A1: After some research I found the method to create functions and learned how to make them work, 
--the scalar function is a method that helps me find a single piece of information in the table.

SELECT GETDATE() AS my_date;
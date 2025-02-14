-- EC_IT143_6.3_fwf_s7_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I need to apply Upper in the first letter and then apply the lower to the following remaining letters
-- To go from this:"paTRicK" to this:"Patrick" I need to use
-- the functions "UPPER" and "LOWER" but I also need to tell these functions where I want them to perform the change 
-- in my words

-- I googled "capitalizing only the first letter in SQL server" and went to Stack Overflow to learn more about the topic.
-- https://stackoverflow.com/questions/15290754/sql-capitalize-first-letter-only


With fwf AS 
(
	Select CustomerName,
		Upper(Left(CustomerName, 1)) + Lower(Substring(CustomerName,2,Len(CustomerName))) as AdHocFirstCap,
		[dbo].[fun_firs_cap](CustomerID) AS FunctionFirstCap
		From [dbo].[t_w3_schools_customers])
	Select fwf.*
	From fwf
	Where fwf.AdHocFirstCap <> fwf.FunctionFirstCap;


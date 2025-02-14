--EC_IT143_6.3_fwf_s4_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I need to apply Upper in the first letter and then apply the lower to the following remaining letters
-- To go from this:"paTRicK" to this:"Patrick" I need to use
-- the functions "UPPER" and "LOWER" but I also need to tell these functions where I want them to perform the change 
-- in my words

-- I googled "capitalizing only the first letter in SQL server" and went to Stack Overflow to learn more about the topic.
-- https://stackoverflow.com/questions/15290754/sql-capitalize-first-letter-only

Select * From [dbo].[t_w3_schools_customers];

Drop Table if exists [dbo].[t_w3_schools_customers];

Select * Into t_w3_schools_customers From v_w3_schools_customers;

-- I found these codes on stack overflow:

-- INITCAP is not a function recognize by SQL SERVER
SELECT INITCAP(CustomerName) FROM [dbo].[t_w3_schools_customers]

-- This code works but it didn't actually change the first letter of each word but only the first letter from the 
-- entire cell range.
Update [dbo].[t_w3_schools_customers]
Set CustomerName = Upper(Left(CustomerName, 1)) + Lower(Substring(CustomerName,2,len(CustomerName)))
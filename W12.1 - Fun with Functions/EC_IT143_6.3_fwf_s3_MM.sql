-- EC_IT143_6.3_fwf_s3_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I need to apply Upper in the first letter and then apply the lower to the following remaining letters
-- To go from this:"paTRicK" to this:"Patrick" I need to use
-- the functions "UPPER" and "LOWER" but I also need to tell these functions where I want them to perform the change 
-- in my words

-- I googled "capitalizing only the first letter in SQL server" and went to Stack Overflow to learn more about the topic.
-- https://stackoverflow.com/questions/15290754/sql-capitalize-first-letter-only





-- Here is the query and how it looks like I have said to my query change only the first letter to upper and then
--It changed the First Letter to Upper but also vanished away with the rest of the letters >.<

Update[dbo].[t_w3_schools_customers]
Set CustomerName = Upper(Left(CustomerName, 1))

Select * From [dbo].[t_w3_schools_customers];

Drop Table If exists t_w3_schools_customers;

Truncate Table t_w3_schools_customers;

Select * Into t_w3_schools_customers From v_w3_schools_customers;



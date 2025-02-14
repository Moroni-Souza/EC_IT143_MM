-- EC_IT143_6.3_fwf_s8_MM
-- Q: How to extract first name from contact name?
-- A: CustomerName = Alejandra Camino - > Alejandra 
-- "Through Google search within the site Stack overflow i found some information about]
--extracting parts from a person's name."
-- https://stackoverflow.com/questions/22289932/extracting-lastname-firstname-middle-names-from-a-combined-field


Select 
	t.CustomerID,
	t.CustomerName,
	[dbo].[fun_FirstName](t.ContactName) AS Contact_First_Name,
	'' as Contact_Last_Name,
	t.[Address],
	t.City,
	t.Country
From 
	tbl_w3_schools_customers as t
Order By 3;

--EC_IT143_6.3_fwf_s4_MM

-- Q: How to extract first name from contact name?
-- A: CustomerName = Alejandra Camino - > Alejandra 
-- "Through Google search within the site Stack overflow i found some information about]
--extracting parts from a person's name."
-- https://stackoverflow.com/questions/22289932/extracting-lastname-firstname-middle-names-from-a-combined-field


Select 
	t.ContactName
,	LEFT (t.ContactName, Charindex(' ', t.ContactName + ' ') - 1) As first_name
FROM 
	[dbo].[tbl_w3_schools_customers] as t
	Order By 1;
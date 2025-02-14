-- EC_IT143_6.3_fwf_s7_MM
-- Q: How to extract first name from contact name?
-- A: CustomerName = Alejandra Camino - > Alejandra 
-- "Through Google search within the site Stack overflow i found some information about]
--extracting parts from a person's name."
-- https://stackoverflow.com/questions/22289932/extracting-lastname-firstname-middle-names-from-a-combined-field



With fwf AS 
(
	Select t.ContactName
		, LEFT(t.ContactName, Charindex(' ', t.ContactName + ' ') -1) As First_Name
		,[dbo].[fun_FirstName](t.ContactName) AS First_Name2
		From [dbo].[tbl_w3_schools_customers] as t)
	Select fwf.*
	From fwf
	Where fwf.First_Name <> fwf.First_Name2;


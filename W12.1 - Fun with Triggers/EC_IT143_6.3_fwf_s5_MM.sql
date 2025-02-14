--EC_IT143_6.3_fwf_s5_MM
-- Q: How to capitalize only the first letter of a column's data?

-- A: I will use an for insert to get all new customers that are added to the 
-- table and have a history by company name customer name and date of first contact.
--For this query I need to create some temporary columns to be inserted into the table called "inserted"
-- https://www.youtube.com/watch?v=jVbj72YO-8s
-- https://stackoverflow.com/questions/3358975/create-trigger-in-sql-server



Insert Into [dbo].[tbl_w3_schools_customers] (CustomerID, CustomerName, ContactName,[Address],City,Country, ContactDate)
	Values(95,'Quantum Bar and Beer' , 'Maicon Ontaro' ,
	'Green Tree 4315', 'Keyence', 'England' ,Getdate());
Insert Into [dbo].[tbl_w3_schools_customers] (CustomerID, CustomerName, ContactName,[Address],City,Country, ContactDate)
	Values(96,'Herreria del Abuelo' , 'Gastón Mendez' ,
	'Cayena 748', 'Guemes', 'Argentina' ,Getdate());
Insert Into [dbo].[tbl_w3_schools_customers] (CustomerID, CustomerName, ContactName,[Address],City,Country, ContactDate)
	Values(97,'Food Green Grow' , 'Craig Armando' ,
	'Vidt 2948', 'Cadiz St', 'Kingville' ,Getdate());


Select * From NewCustomerHistory


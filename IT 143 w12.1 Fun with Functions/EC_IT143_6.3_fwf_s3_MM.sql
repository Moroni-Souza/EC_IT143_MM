-- EC_IT143_6.3_fwf_s3_MM

-- Q: How to extract first name from contact name?
-- A: CustomerName = Alejandra Camino - > Alejandra 

Select t.ContactName 
From [dbo].[tbl_w3_schools_customers] as t
Order By 1;


-- EC_IT143_6.3_fwf_s2_MM

-- Q: How to create a table of new customers along with the date of first contact

-- A: I will use an for insert to get all new customers that are added to the 
-- table and have a history by company name customer name and date of first contact.
--For this query I need to create some temporary columns to be inserted into the table called "inserted"

-- Creating a new column for date time
	Alter Table [dbo].[tbl_w3_schools_customers]
	Add ContactDate datetime default getdate();
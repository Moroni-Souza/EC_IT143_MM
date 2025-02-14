--EC_IT143_6.3_fwf_s4_MM

--Alter Table [dbo].[tbl_w3_schools_customers]
--ADD last_modified_date DateTime Default getdate();

-- Q: How to keep a track of when a record was last modified?

-- A: To create this you will need a Trigger Function using Update.

- https://stackoverflow.com/questions/4574010/how-to-create-trigger-to-keep-track-of-last-changed-data


Create Trigger trg_updating_date
ON [dbo].[tbl_w3_schools_customers]
After Update
AS
/*****************************************************************************************************************
NAME: trg_updating_date
PURPOSE: Create a trigger that works and helps me maintain a customer history.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/13/2025    Moroni           1. Script for EC_IT_143 with a demonstration of a working trigger
					  Mirandolli
		
RUNTIME: 
1s

NOTES: 
This trigger will update the data every time my table is updated, that is, when someone tries to change 
the table data, my trigger will be triggered.
 
******************************************************************************************************************/
BEGIN 
	Update [dbo].[tbl_w3_schools_customers]
		Set 
	        ContactDate = getdate()
		Where ContactName in 
	(
		Select Distinct
				ContactName
			From Inserted)
	
END;


Select * From [dbo].[tbl_w3_schools_customers]


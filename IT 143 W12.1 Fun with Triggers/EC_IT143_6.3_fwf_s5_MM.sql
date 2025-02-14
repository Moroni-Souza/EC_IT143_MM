--EC_IT143_6.3_fwf_s5_MM

--Alter Table [dbo].[tbl_w3_schools_customers]
--ADD last_modified_date DateTime Default getdate();

-- Q: How to keep a track of when a record was last modified?

-- A: To create this you will need a Trigger Function using Update.

- https://stackoverflow.com/questions/4574010/how-to-create-trigger-to-keep-track-of-last-changed-data


Update [dbo].[tbl_w3_schools_customers]
Set CustomerName = 'Alfreds Futterkiste Junior'
Where CustomerName = 'Alfreds Futterkiste'


Update [dbo].[tbl_w3_schools_customers]
Set CustomerName = 'Arnold the Thorn'
Where CustomerName = 'Around the Horn'


Select * From [dbo].[tbl_w3_schools_customers]

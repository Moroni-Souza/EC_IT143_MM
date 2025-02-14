-- EC_IT143_6.3_fwf_s1_MM

Alter Table [dbo].[tbl_w3_schools_customers]
ADD last_modified_date DateTime Default getdate();

-- Q: How to keep a track of when a record was last modified?
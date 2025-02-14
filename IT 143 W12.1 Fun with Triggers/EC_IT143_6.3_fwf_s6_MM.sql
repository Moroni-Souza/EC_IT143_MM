-- EC_IT143_6.3_fwf_s6_MM
--Alter Table [dbo].[tbl_w3_schools_customers]
--ADD last_modified_date DateTime Default getdate();
-- Q: How to keep a track of when a record was last modified?
-- A: To create this you will need a Trigger Function using Update.
- https://stackoverflow.com/questions/4574010/how-to-create-trigger-to-keep-track-of-last-changed-data


-- Q: How to pull street name just using zip code
-- A: We need to find out from internet resources available
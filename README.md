# APIdemo
# ER diagram explanation:
This datawarehouse has five dimensions and one fact table. Dimension tables can still be normalized. For example, date_dim can be 
normalized to date and time dimensions. 
The data is initially loaded into staging table. Necessary transformations are done to make the data suitable for loading into the 
defined dimensions and facts. 
Database creation scripts are present in database folder.

![ER Diagram](./ER.png)

#Query
SELECT COUNT(JOBS_ID) NUM_OF_JOBS
FROM jobs_facts f, location_dim ld, dates_dim dd
WHERE f.location_id = ld.location_id
AND lower(ld.locations_name) like lower('%New York City Metro Area%')
AND (CalendarYear = 2021 AND CalendarMonth = 1 AND ld.daynum_of_month BETWEEN 1 AND 31); 

#OR

SELECT COUNT(JOBS_ID) NUM_OF_JOBS
FROM jobs_facts f, location_dim ld, dates_dim dd
WHERE f.location_id = ld.location_id
AND lower(ld.locations_name) like lower('%New York City Metro Area%')
AND to_date(datekey, 'dd/mm/yyyy') between '01/01/2021' AND '31/01/2021';   

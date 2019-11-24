# rga

## Task #1 - Upload and transform data
### 1. Create Database for this specific project. [create_db.sql](InterviewProject_GentileMariano/task1/scripts/create/create_db.sql)<br>
*This step wasn't requested but I executed it to keep separate databases.*
### 2. Create a table in SQL Server for each data source.<br>
- [create_email_tbl.sql](InterviewProject_GentileMariano/task1/scripts/create/create_email_tbl.sql)
- [create_hours_tbl.sql](InterviewProject_GentileMariano/task1/scripts/create/create_hours_tbl.sql)
- [create_roster_tbl.sql](InterviewProject_GentileMariano/task1/scripts/create/create_roster_tbl.sql)
- [create_skills_tbl.sql](InterviewProject_GentileMariano/task1/scripts/create/create_skills_tbl.sql)<br>

*The ImportFromExcel function didn't work as expected, so I decided to export the .xlsx files to .csv and proceeded to create the tables from those comma separated files to avoid spending excesive time. Since I had to install several new components for this project, I think it might be related to some 64 bit / 32 bit incompatibility among previously installed software and the new components.*

### 3. Clean each data source.
- Clean Null Records: 
    [email_null.sql](InterviewProject_GentileMariano/task1/scripts/clean/email_null.sql); 
    [roster_null.sql](InterviewProject_GentileMariano/task1/scripts/clean/roster_null.sql); 
    [hours_null.sql](InterviewProject_GentileMariano/task1/scripts/clean/hours_null.sql); 
    [skills_null.sql](InterviewProject_GentileMariano/task1/scripts/clean/skills_null.sql).<br>
Null records: 0.<br>
- Remove unnecesary columns.<br>
    - Roster: Gender. [del_col_roster.sql](InterviewProject_GentileMariano/task1/scripts/clean/del_col_roster.sql).<br>
    - Hours: None.<br>
    - Skills: Attribute Type. [del_col_skills](InterviewProject_GentileMariano/task1/scripts/clean/del_col_skills.sql)<br>
    - Email: None.<br>
- Clean Line Breaks in Strings: Check strings prone to have line breaks. 
[roster_linebreak.sql](InterviewProject_GentileMariano/task1/scripts/clean/roster_linebreak.sql), 
[skills_linebreak](InterviewProject_GentileMariano/task1/scripts/clean/skills_linebreak.sql).<br>
- Trim leading & trailing spaces: [roster_trim.sql](InterviewProject_GentileMariano/task1/scripts/clean/roster_trim.sql), 
[skills_trim](InterviewProject_GentileMariano/task1/scripts/clean/skills_trim.sql), 
[hours_trim.sql](InterviewProject_GentileMariano/task1/clean/scripts/hours_trim.sql), 
[email_trim](InterviewProject_GentileMariano/task1/scripts/clean/email_trim.sql).<br>
### 4. DIMENSION
As far as I could find Multidimensional Models are not available in SQL Server Express Edition (see link below). As a workaround I created unique tables for each field's distinct value using the following script:
```
use rga;
go
SELECT distinct [fieldname]
INTO dbo.[newtablename]
from dbo.[table]
```
https://docs.microsoft.com/en-us/analysis-services/analysis-services-features-supported-by-the-editions-of-sql-server-2016#multidimensional-models

### 5. Alter the existing tables by adding the following fields.
- Admin Hours: [alter_adminhrs.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_adminhrs.sql)
- Cliente Hours: [alter_clienthrs.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_clienthrs.sql)
- Total Working Hours: [alter_totalhrs.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_totalhrs.sql)
- Target Working Hours by Employee: [alter_targetemp.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_targetemp.sql)<br>
*Since the target is 40 hs per week I calculated the number of weeks in each month and multiplied it by 40 to get the monthly target, as the rest of fields have monthly data.*
- Utilization: [alter_utilization.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_utilization.sql)
- Client Time: [alter_clienttime.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_clienttime.sql)
- Admin Time: [alter_admintime.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_admintime.sql)
- Skills Level: [alter_skillslevel.sql](InterviewProject_GentileMariano/task1/scripts/alter/alter_skillslevel.sql)
### 6. Export the final versions of hours, skills and Employee_Roaster_Data tables.
- Roster: [roster_table.xlsx](InterviewProject_GentileMariano/task1/tables/roster_table.xlsx)
- Hours: [hours_table.xlsx](InterviewProject_GentileMariano/task1/tables/hours_table.xlsx)
- Skills: [skills_table.xlsx](InterviewProject_GentileMariano/task1/tables/skills_table.xlsx)
- Email: [email_data.csv](InterviewProject_GentileMariano/task1/tables/email_data.csv)

## Task #2 - Create the dashboard
The dashboard was generated in Power BI establishing a connection to de local Database created in the first step.
[dashboard.pbix](InterviewProject_GentileMariano/task2/dashboard.pbix)

## Task #3 - Data Analysis
Document with the analysis of findings.
[task3.docx](InterviewProject_GentileMariano/task3/task3.docx)

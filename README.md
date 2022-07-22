# Pewlett Hackard Analysis

## Project Overview

### Purpose 
The purpose of this analysis was to help Pewlett-Hackard prepare for an imminent increase in employee retirements as baby boomers reach retirement age. The first task was to determine the number of retiring employees per job title. The second task was to identify employees who are eligible to participate in a mentorship program. For both tasks, the query statements were used to generate a table, which was then exported as a csv file for management to view. To do this, this project uses Postgre SQL to query Pewlett-Hackard employee data.

### Resources
- Data Source(s): departmens.csv, dept_emp.csv, dept_manageres.csv, salaries.csv, titles.csv
- Postgre SQL 11, pgAdmin 6.8

## Results
### Major Points
- The two job titles with the most upcoming retirees by a significant margin are Senior Engineer (25,916) and Senior Staff (24,926). This is shown in the retiring titles image shown below and the retiring_titles.csv file in the data folder.
- Between the senior engineers (25,916), engineers (9,285), and assistant engineers (1,090), the engineering department at Pewlett-Hackard has (36,921) upcoming retirees.
- Only two managers need to be replaced at Pewlett-Hackard. This is shown in the retiring titles image shown below and the retiring_titles.csv file in the data folder. 
- There are 1,549 employees eligible for the Pewlett-Hackard mentorship program.
#### Retiring Titles
![Retiring Titles](/Data/retiring_titles.png?raw=true "Title")

## Summary

### Number of Roles Requiring Replacement Soon
Per retiring_titles.csv, the two job titles with the most upcoming retirees by a significant margin are Senior Engineer (25,916) and Senior Staff (24,926). Replacing ~ 25,000 employees for each position is no small task. So Pewlett-Hackard may want to start the recruitment process for filling these positions soon to avoid being behind in the future.
### Preparedness of Mentorship Program


The management at Pewlett-Hackard is in good shape as, per retiring_titles.csv, there are only 2 managers approaching retirement. Having established and experienced managers will be very valuable in the onboarding process, so this is encouraging for the upcoming influx of new hires. 
# Pewlett Hackard Analysis

## Project Overview

### Purpose 
The purpose of this analysis was to help Pewlett-Hackard prepare for an imminent increase in employee retirements as baby boomers reach retirement age. The first task was to determine the number of retiring employees per job title. The second task was to identify employees who are eligible to participate in a mentorship program. For both tasks, the query statements were used to generate a table, which was then exported as a csv file for management to view. To do this, this project uses Postgre SQL to query Pewlett-Hackard employee data.

### Resources
- Data Source(s): departmens.csv, dept_emp.csv, dept_manageres.csv, salaries.csv, titles.csv
- Tools: Postgre SQL 11, pgAdmin 6.8

## Results
### Major Points
- The two job titles with the most upcoming retirees by a significant margin are Senior Engineer (25,916) and Senior Staff (24,926). This is shown in the retiring titles image shown below and the retiring_titles.csv file in the data folder.
- Between the senior engineers (25,916), engineers (9,285), and assistant engineers (1,090), the engineering department at Pewlett-Hackard has (36,921) upcoming retirees.
- Only two managers need to be replaced at Pewlett-Hackard. This is shown in the retiring titles image shown below and the retiring_titles.csv file in the data folder. 
- There are 1,549 employees eligible for the Pewlett-Hackard mentorship program. This is shwon in the end of mentorship query image below, which is screenshot of the end of mentorship_eligibility.csv.

#### Retiring Titles
![Retiring Titles](/Data/retiring_titles.png?raw=true "Title")

#### End of Mentorship Query
![End of Mentorship Query](/Data/mentorship_query_end.png?raw=true "Title")

## Summary

### Number of Roles Requiring Replacement Soon
Pewlett-Hackard will need to replace 72,458 total employees by the end of the "silver tsunami" of retiring baby boomers. The break down of retiring employees by title, as shown in the Retiring Titles image in the Results section and in retiring_titles.csv,  is as follows: 
- 25,916 Senior Engineers 
- 24,926 Senior Staff 
- 9,285 Engineers
- 7,636 Staff
- 3,603 Technique Leaders
- 1,090 Assistant Engineers
- 2 Managers

There are 50,842 total senior employees retiring between Senior Engineers and Senior Staff. There are 36,921 engineering employees retiring between Senior Engineers, Engineers, and Assistant Engineers. Replacing ~50,000 and ~35,000 employees, respectively, is no small task. So Pewlett-Hackard may want to start the recruitment process for filling these positions soon to avoid being behind in the future. Fortunately, the management at Pewlett-Hackard is in good shape as, per retiring_titles.csv, there are only 2 managers approaching retirement. Having established and experienced managers will be very valuable in the onboarding process, so this is encouraging for the upcoming influx of new hires. 
 
### Preparedness of Mentorship Program
The Pewlett-Hackard mentorship program is woefully unprepared to accommodate the number of roles that will need to be replaced by the upcoming retirees. As mentioned in the results section, there are 1,549 Pewlett-Hackard employees that are eligible for the mentorship program and 72,458 upcoming retirees. That comes out to ~45 new hires for every eligible mentor. I believe that the maximum number of mentees a mentor should have is 5. Pewlett-Hackard may want to consider less strict requirements for the mentorship program to more effectively accommodate the new employees.


### Count of Eligible Mentors by Title
The image below is an additional table I created to provide further insight into the mentorship program. We will obviously want mentors to be mentoring someone in their department/field of expertise, so the table below shows how many eligible mentors we have for each title.

![Mentorship Titles](/Data/mentorship_titles.png?raw=true "Title")


### Expanded Mentorship Program
To more effectively accommodate the new employees, I mentioned the idea of expanding the mentorship program. The mentorship_eligibility_expanded.csv file contains all of the mentorship eligible employees if we expanded the eligible birth dates by one year on either side of the requirement. So this new hypothetical mentorship program would be all current employees born in 1964, 1965, or 1966. The image below shows the breakdown of eligible mentors by title in the expanded program. It adds up to a total of 19,905 mentors, which would be a much more reasonable 3.64 mentors for every new hire. I recommend Pewlett-Hackard utilize this expanded mentorship program until we have overcome the retirement of the baby boomer generation.

![Mentorship Titles](/Data/mentorship_titles_expanded.png?raw=true "Title")

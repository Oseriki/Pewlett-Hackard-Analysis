# Pewlett-Hackard-Analysis
- SQL Analysis

## Overview of Election Audit
The purpose of this project are as follows:
-	Generate a table in the database to show the number of retiring employees by title.
-	Generate a table in the database to show the list of current employees who are eligible for the mentorship program based on birth date.
-	Write a report of the employee database analysis.

## Results

### Results from Retiring Employees by Title Analysis.
-	This analysis shows that employees switched titles over the years with the organization. This is indicative of opportunity for career growth within the organization and this can be used positively as a recruitment tool.

-	90,398 employees of various titles are retiring. 

-	Out of this number, employees in senior positions such as “Senior Engineer”, “Other Senior Staff”, and “Manager” make up 63% of retiring employees. This is serious result and something that should require urgent management attention as employees in senior positions are critical for the day-to-day operations of an organization. In order words, these positions need to be filled up as soon as possible.

### Results from Mentorship Eligibility Analysis
-	1549 employees are eligible for mentorship.
-
-	Employees in senior level positions such as “Senior Staff”, “Senior Engineers” and “Technical Leaders” make up 51% of this group. This shows that the organization is being proactive as the analysis of retiring employees (see results from previous analysis) shows employees in senior level positions are retiring more than employees in lower-level positions.

## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
-	In total, roles currently occupied by 90,398 retiring employees will need to be filled. Specifically, 29,415 senior engineer roles, 28,225 senior staff roles, 14,221 engineer roles, 12,242 employee roles, 4,502 technical leader roles, 1,761 assistant engineer roles, and 2 manager roles will soon be vacant. See retiring_title table in the Images folder. Also, see list of employees who are currently occupying this roles and their respective job roles in the “unique_titles” table.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
-	Yes, there are more than enough retirement-ready employees in the departments to mentor the next generation. However, the bigger problem is the huge disparity between the number of employees who are eligible for mentorship and the roles that will soon be vacant. To put this in context, while 90,398 employees are retiring, analysis shows that only 1,549 employees are currently eligible for mentorship. See “Role_to_be_Vacant” table and “Mentorship_Eligibility_by_Title” tables in the Images folder.

-	To resolve above stated issue and to avoid a major problem for the organization, the organization needs to urgently embark on a massive recruitment effort to recruit new employees who can be mentored by employees who will be retiring soon.

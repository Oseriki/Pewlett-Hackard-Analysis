--Getting retiring employees only in Sales and Development department 
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    ti.title,
	ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS ti
ON e.emp_no=  ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Get the count of retiring employees by titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT COUNT (*) FROM retiring_titles;

-- Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (emp_no)
e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibilty
from employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

select * from mentorship_eligibilty
limit 10

select title, count(*) as "Mentorship_Eligibility_by_Title"
INTO mentorship_eligibilty_count_by_title
from mentorship_eligibilty
GROUP BY title

select * from mentorship_eligibilty_count_by_title;

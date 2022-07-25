-- Deliverable 1

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01') 
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT
	COUNT(ut.title), ut.title
INTO retiring_titles
FROM
	unique_titles as ut
GROUP BY
	ut.title
ORDER BY
	COUNT DESC

-- Deliverable 2

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY
	e.emp_no;

-- Deliverable 3 Additional Queries/Tables

SELECT
	COUNT(me.title), me.title
INTO mentorship_titles
FROM
	mentorship_eligibility as me
GROUP BY
	me.title
ORDER BY
	COUNT DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility_expanded
FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1964-01-01' AND '1966-12-31')
ORDER BY
	e.emp_no;
	
SELECT
	COUNT(mee.title), mee.title
FROM
	mentorship_eligibility_expanded as mee
GROUP BY
	mee.title
ORDER BY
	COUNT DESC;

SELECT SUM(count)
FROM mentorship_eligibility_expanded;
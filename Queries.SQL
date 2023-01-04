-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees e
JOIN salaries s
USING (emp_no);

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    first_name,
    last_name,
    hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
    m.dept_no,
    d.dept_name,
    m.emp_no,
    e.last_name,
    e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d
        ON (m.dept_no = m.dept_no)
INNER JOIN employees AS e
        ON (m.emp_no = e.emp_no);

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT 
	de.emp_no, 
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS de
	JOIN employees AS e
		ON de.emp_no = e.emp_no
	JOIN departments AS d
		ON de.dept_no = d.dept_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
    first_name
    last_name
FROM
    employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
    de.emp_no,
    e.last_name,
    e.first_name

FROM dept_emp de
JOIN employees e
USING (emp_no);

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
    de.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM dept_emp de
JOIN employees e
ON d.emp_no = e.emp_no;
JOIN departments d
ON de.emp_no = d.dept_no


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
    last_name,
COUNT(first_name) AS "frequency"
FROM        employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;


-- 1.List following details of each employee: employee number, last name, first name, sex and salary

SELECT e.emp_no,
  e.last_name,
  e.first_name,
  e.sex,
  s.salary
FROM employees e
INNER JOIN salaries s 
ON e.emp_no = s.emp_no;

-- 2.List first name, last name and hire date for employees who were hired in 1986

SELECT first_name, 
   last_name, 
   hire_date
FROM employees
WHERE
    hire_date >= '1986-01-01'
    AND hire_date <= '1986-12-31';

--3.List the manager of each department with the following info: dept. number, dept. name,  
-- manager's emp number, last name, first name

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d 
INNER JOIN dept_emp c
ON d.dept_no = c.dept_no
INNER JOIN employee e
ON c.emp_no = e.emp_no
INNER JOIN titles t
ON e.title_id = t.title_id
WHERE title = 'Manager';

--4. List the department of each employee with the following info: employee #, last name, first name, and 
-- department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp c
ON e.emp_no = c.emp_no
INNER JOIN departments d
ON c.dept_no = d.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names 
-- begin with "B".

SELECT e.first_name, e.last_name, e.sex,
FROM employees e
WHERE first_name = 'Hercules' 
  AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name
-- and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp c 
ON e.emp_no = c.emp_no
INNER JOIN departments d 
ON c.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp c 
ON e.emp_no = c.emp_no
INNER JOIN departments d 
ON c.dept_no = d.dept_no
WHERE 
  dept_name = 'Sales'
  OR dept_name = 'Development';

--8. In descending, list the frequency count of employee last names, i.e., how many employees share each 
-- last name

SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees 
GROUP By last_name
ORDER By "Frequency" DESC;
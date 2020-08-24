

-- List following details of each employee: employee number, last name, first name, sex and salary

SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- List first name, last name and hire date for employees who were hired in 1986

SELECT 







--list the manager of each department with the following info: dept. number, dept. name, manager's emp 
--number last name, first name


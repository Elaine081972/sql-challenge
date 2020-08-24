

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
    AND hire_date <= '1986-12-31'

--3.List the manager of each department with the following info: dept. number, dept. name,  
-- manager's emp number, last name, first name

-- Alternative solution:
-- Perform an INNER JOIN on the two tables
SELECT p.first_name, p.last_name, p.hand, m.loser_rank
FROM matches AS m
INNER JOIN players AS p ON
p.player_id=m.loser_id;
 





--4. List the department of each employee with the following info: employee #, last name, first name, and 
-- department name








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



SELECT s.store_id, SUM(amount) AS Gross
FROM payment AS p
  JOIN rental AS r
  ON (p.rental_id = r.rental_id)
    JOIN inventory AS i
    ON (i.inventory_id = r.inventory_id)
      JOIN store AS s
      ON (s.store_id = i.store_id)
      GROUP BY s.store_id;

-- Join all three tables
SELECT owners.owner_name,
pet_names_new.pet_name, pet_names_new.type, service.service_type
FROM owners
INNER JOIN pet_names_new ON owners.ID = pet_names_new.owner_id
INNER JOIN service ON service.id = pet_names_new.service_id;

-- Join Tables using foreign keys???
SELECT customer.first_name, customer.last_name, email.email, phone.phone
FROM customer
JOIN customer_email AS email
  ON customer.id = email.customer_id
JOIN customer_phone AS phone
  ON customer.id = phone.customer_id;

SELECT children.child_name, child_parent.child_id, parents.parent_name, child_parent.parent_id
FROM children
LEFT JOIN child_parent
ON child_parent.child_id = children.child_id
LEFT JOIN parents
ON child_parent.parent_id = parents.parent_id;

-- A join statement to query all courses taken by students
SELECT s.id, s.last_name, s.first_name, c.id, c.course_name, j.course_term
FROM students s
LEFT JOIN student_courses_junction j
ON s.id = j.student_id
LEFT JOIN courses c
ON c.id = j.course_id;

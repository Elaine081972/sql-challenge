-- Create schema
-- Create tables

CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(30),   
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)      
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no)    
);    
  
CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    PRIMARY KEY (emp_no)  
);

CREATE TABLE titles (
  
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(30),
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    title_id VARCHAR(10) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(10),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

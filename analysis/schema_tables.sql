-- creating schema for tables 


-- create table for DEPARTMENTS
DROP TABLE DEPARTMENTS

CREATE TABLE departments (
    dept_no VARCHAR(20) NOT NULL,
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments

-- create table for EMPLOYEES
DROP TABLE EMPLOYEES

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees

-- create table for DEPARTMENT_EMPLOYEE
DROP TABLE dept_emp

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

SELECT * FROM dept_emp

-- create table for DEPARTMENT_MANAGER
DROP TABLE dept_managers

CREATE TABLE dept_managers (
    dept_no VARCHAR(20) NOT NULL,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_managers

-- create table for SALARIES
DROP TABLE SALARIES

CREATE TABLE salaries (
    emp_no INT,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

-- create table for TITLES

DROP TABLE TITLES
CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles
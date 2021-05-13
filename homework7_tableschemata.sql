-- HOMEWORK 7 QUERIES --

-------------------------------------------------
-- CREATE TABLES BEFORE IMPORT --
-------------------------------------------------


-- Create titles table --
CREATE TABLE titles (
	titles_id VARCHAR NOT NULL,
	PRIMARY KEY (titles_id),
	title VARCHAR NOT NULL
);


-- Create employees table --
CREATE TABLE employees (
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(titles_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);


-- Create salaries table --
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	PRIMARY KEY (emp_no, salary)
);


-- Create departments table --
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no),
	dept_name VARCHAR NOT NULL
);


-- Create department employees table --
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);


-- Create department manager table --
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


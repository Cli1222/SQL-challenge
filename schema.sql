CREATE TABLE departments(
    dept_no     VARCHAR(4)  PRIMARY KEY,
    dept_name   VARCHAR(40) NOT NULL
);

CREATE TABLE titles(
    title_id    VARCHAR(5) PRIMARY KEY,
    title       VARCHAR(40) NOT NULL
);

CREATE TABLE    employees(
    emp_no  INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no,salary),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY key(dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



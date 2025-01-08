-- Drop the tables if they already exist
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;

-- Create the departments table
CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert sample data into departments
INSERT INTO departments (dept_name) VALUES
('HR'),
('Finance'),
('IT');

-- Create the employees table
CREATE TABLE employees (
    empl_id SERIAL PRIMARY KEY,
    empl_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id)
);

-- Insert sample data into employees (optional)
INSERT INTO employees (empl_name, dept_id) VALUES
('Rajesh Kumar', 1),
('Anita Sharma', 2),
('Vikram Singh', 3);

SELECT * FROM departments;
SELECT * FROM employees; 


-- Drop the function if it already exists
DROP FUNCTION IF EXISTS add_employee;

-- Create the function (PostgreSQL equivalent of the procedure)
CREATE OR REPLACE FUNCTION add_employee(
    emp_name VARCHAR(50),
    emp_dept_id INT
) RETURNS VOID AS $$
BEGIN
    -- Check if the department exists
    IF EXISTS (SELECT 1 FROM departments WHERE dept_id = emp_dept_id) THEN
        -- Insert the employee
        INSERT INTO employees (empl_name, dept_id)
        VALUES (emp_name, emp_dept_id);
    ELSE
        -- Raise an error if the department doesn't exist
        RAISE EXCEPTION 'Department does not exist.';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Add an employee to an existing department
SELECT add_employee('John Doe', 1);

-- Try adding an employee to a non-existent department
SELECT add_employee('Jane Doe', 5);

-- View the employees table
SELECT * FROM employees;

-- View the departments table
SELECT * FROM departments;

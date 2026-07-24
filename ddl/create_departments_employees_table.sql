CREATE TABLE IF NOT EXISTS departments_employees (
    departments_id INTEGER REFERENCES departments(id) ON UPDATE CASCADE ON DELETE CASCADE,
    employees_id INTEGER REFERENCES employees(id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (departments_id, employees_id)
);

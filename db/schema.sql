DROP DATABASE IF EXISTS manager_db;
CREATE DATABASE manager_db;
USE manager_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30),
  department_id INT,
  salary DECIMAL NOT NULL,
  FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL,
  PRIMARY KEY(id)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  salary DECIMAL NOT NULL DEFAULT 0,
  FOREIGN KEY(role_id)
    REFERENCES roles(id)
    ON DELETE SET NULL,
  FOREIGN KEY(manager_id)
    REFERENCES employees(id)
    ON DELETE SET NULL,
  PRIMARY KEY (id)
);


DELIMITER //
CREATE TRIGGER before_insert_employee
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
  SET NEW.salary = (SELECT salary FROM roles WHERE id = NEW.role_id);
END //
DELIMITER ;
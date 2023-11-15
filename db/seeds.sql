INSERT INTO department (id, name) VALUES (1, 'Finance');
INSERT INTO department (id, name) VALUES (2, 'Engineering');
INSERT INTO department (id, name) VALUES (3, 'Managment');
INSERT INTO department (id, name) VALUES (4, 'Sales');


INSERT INTO roles (id, title, department_id, salary) VALUES (1, 'Accountant', 1, 50000);
INSERT INTO roles (id, title, department_id, salary) VALUES (2, 'Finance Lead', 1, 160000);

INSERT INTO roles (id, title, department_id, salary) VALUES (3, 'Entry Developer', 2, 50000);
INSERT INTO roles (id, title, department_id, salary) VALUES (4, 'Lead Developer', 2, 160000);

INSERT INTO roles (id, title, department_id, salary) VALUES (5, 'Manager', 3, 150000);
INSERT INTO roles (id, title, department_id, salary) VALUES (6, 'Team Lead', 3, 90000);

INSERT INTO roles (id, title, department_id, salary) VALUES (7, 'Entry Sales', 2, 50000);
INSERT INTO roles (id, title, department_id, salary) VALUES (8, 'Sale Lead', 2, 160000);



INSERT INTO employees (id, first_name, last_name, role_id, manager_id) VALUES (1, 'Sam', 'Smith', 1, NULL);
INSERT INTO employees (id, first_name, last_name, role_id, manager_id) VALUES (2, 'Ariana', 'Grande', 2, 1);
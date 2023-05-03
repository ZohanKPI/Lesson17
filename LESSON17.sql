-- Task 1
SELECT COUNT(DISTINCT JOB_ID) from employees;
-- Task 2
SELECT AVG(SALARY) from employees
WHERE DEPARTMENT_ID = 90;
SELECT COUNT(EMPLOYEE_ID) from employees
WHERE DEPARTMENT_ID = 90;
-- Task 3
SELECT JOB_ID, COUNT(*) from employees
GROUP BY JOB_ID;
-- Task 4
SELECT e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID from employees e;
-- Task 5
SELECT e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, j.JOB_ID, l.LOCATION_ID, l.city from employees e
INNER JOIN jobs j ON e.JOB_ID = j.JOB_ID
INNER JOIN departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN locations l on d.LOCATION_ID = l.LOCATION_ID
WHERE l.city = 'London';
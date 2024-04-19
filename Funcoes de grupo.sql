SELECT AVG (salary),SUM(salary)
FROM employees;

SELECT MIN(hire_date),MAX(hire_date)
FROM employees;

SELECT MIN(salary),MAX(salary)
FROM employees;

SELECT COUNT(*)
FROM employees;

SELECT COUNT(commission_pct)
FROM employees;

SELECT COUNT(commission_pct),COUNT(*)
FROM employees;

SELECT COUNT(DISTINCT department_id)
FROM employees;

SELECT AVG(commission_pct)
FROM employees;

SELECT AVG(NVL(commission_pct,0))
FROM employees;

SELECT department_id,AVG(salary)
FROM employees
GROUP BY  department_id
ORDER BY department_id;

SELECT department_id,job_id,SUM(salary)
FROM employees
GROUP BY department_id,job_id
ORDER BY department_id,job_id;

SELECT department_id,MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000;

SELECT job_id, SUM(salary) TOTAL
FROM employees
WHERE job_id <> 'SA_REP'
GROUP BY job_id
HAVING SUM(salary)>10000
ORDER BY SUM(salary);

SELECT MAX(AVG(salary)) "Maior Media Salario"
FROM employees
GROUP BY department_id;
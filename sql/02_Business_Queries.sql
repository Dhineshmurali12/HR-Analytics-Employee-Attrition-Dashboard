-- Total Employees

SELECT COUNT(*) AS TotalEmployees
FROM employees;

-- Total Attrition

SELECT Attrition,
       COUNT(*) AS Employees
FROM employees
GROUP BY Attrition;

-- Average Monthly Income

SELECT ROUND(AVG(MonthlyIncome),2) AS AverageSalary
FROM employees;

-- Average Age

SELECT ROUND(AVG(Age),2) AS AverageAge
FROM employees;

-- Employees by Department

SELECT Department,
       COUNT(*) AS Employees
FROM employees
GROUP BY Department
ORDER BY Employees DESC;
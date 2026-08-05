-- ==========================================
-- Query 1: Total Employees
-- Objective: Count the total number of employees
-- ==========================================

SELECT COUNT(*) AS TotalEmployees
FROM employees;
-- ==========================================
-- Query 2: Attrition Count
-- Objective: Count employees who left the company
-- ==========================================

SELECT
    Attrition,
    COUNT(*) AS Employees
FROM employees
GROUP BY Attrition;

-- ==========================================
-- Query 3
-- Attrition Rate
-- ==========================================

SELECT
ROUND(
COUNT(CASE
WHEN Attrition='Yes'
THEN 1
END)
*100.0/COUNT(*),2
) AS AttritionRate;

-- ==========================================
-- Query 4
-- Gender Distribution
-- ==========================================

SELECT
Gender,
COUNT(*) AS Employees
FROM employees
GROUP BY Gender;

-- Employees by Marital Status

SELECT
MaritalStatus,
COUNT(*) AS Employees
FROM employees
GROUP BY MaritalStatus
ORDER BY Employees DESC;

--Employees by Business Travel
SELECT
BusinessTravel,
COUNT(*) AS Employees
FROM employees
GROUP BY BusinessTravel
ORDER BY Employees DESC;

--Employees by Education
SELECT
Education,
COUNT(*) AS Employees
FROM employees
GROUP BY Education;

--Employees by Education Field
SELECT
EducationField,
COUNT(*) AS Employees
FROM employees
GROUP BY EducationField
ORDER BY Employees DESC;

--Employees by Over Time
SELECT
OverTime,
COUNT(*) AS Employees
FROM employees
GROUP BY OverTime;

--Employees by Job Role
SELECT
JobRole,
COUNT(*) AS Employees
FROM employees
GROUP BY JobRole
ORDER BY Employees DESC;

-- ==========================================
-- Query 11
-- Employee Count by Department
-- ==========================================

SELECT
    Department,
    COUNT(*) AS Employees
FROM employees
GROUP BY Department
ORDER BY Employees DESC;

PRAGMA table_info(employees);

SELECT name FROM sqlite_master WHERE type='table';

SELECT * FROM employees LIMIT 1;

-- Salary by Education
-- Given the education levels and salaries of a group of individuals, find what is the average salary for each level of education.

SELECT education, AVG(salary) AS avg_salary
FROM google_salaries
GROUP BY education;
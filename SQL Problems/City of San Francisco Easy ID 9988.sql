-- Find the top 3 jobs with the highest overtime pay rate
-- Get the job titles of the 3 employees who received the most overtime pay
-- Output the job title of selected records.

SELECT jobtitle
FROM
    (
    SELECT
    jobtitle, RANK() over(ORDER BY overtimepay DESC) AS rnk
    FROM sf_public_salaries
    ) AS cte
WHERE rnk <= 3;
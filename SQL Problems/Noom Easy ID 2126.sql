-- Account Registrations
-- Find the number of account registrations according to the signup date. Output the year months (YYYY-MM) and their corresponding number of registrations.

SELECT DATE_FORMAT(started_at, '%Y-%m') AS started_month,
    COUNT(*) AS n_registerations
FROM noom_signups
GROUP BY started_month;
-- Pending Claims
-- Count how many claims submitted in December 2021 are still pending. A claim is pending when it has neither an acceptance nor rejection date.


SELECT COUNT(*) AS n_claims
FROM cvs_claims
WHERE (YEAR(date_submitted) = 2021 
AND MONTH(date_submitted) = 12) 
AND Date_accepted IS NULL 
AND date_rejected IS NULL;
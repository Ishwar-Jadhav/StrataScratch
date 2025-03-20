-- April & May Sign Up's
-- You have been asked to get a list of all the sign up IDs with transaction start dates in either April or May.
-- Since a sign up ID can be used for multiple transactions only output the unique ID.
-- Your output should contain a list of non duplicated sign-up IDs.

SELECT DISTINCT signup_id
FROM transactions
WHERE MONTH(transaction_start_date) IN ('04', '05');
User Growth Rate
Find the growth rate of active users for Dec 2020 to Jan 2021 for each account. The growth rate is defined as the number of users in January 2021 divided by the number of users in Dec 2020. Output the account_id and growth rate.

SELECT account_id, COUNT(DISTINCT IF(record_date BETWEEN '2021-01-01' AND '2021-01-31', user_id, NULL)) / COUNT( DISTINCT IF(record_date BETWEEN '2020-12-01' AND '2020-12-31', user_id, NULL)) AS ratio
FROM sf_events
GROUP BY account_id;
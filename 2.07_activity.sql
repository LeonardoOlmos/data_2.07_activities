-- Leonardo Olmos Saucedo / Activitiy 2.07

-- 1. Find out how many cards of each type have been issued.
SELECT type, count(*) as total
FROM bank.card
GROUP BY type
ORDER BY 2;

-- 2. Find out how many customers there are by the district.
SELECT district_id, COUNT(*) 
FROM bank.client
GROUP BY district_id
ORDER BY 1;

-- 3. Find out average transaction value by type.
SELECT type, AVG(amount) AS avg_by_type
FROM trans
GROUP BY type;

-- 4. 
SELECT type, operation, k_symbol, AVG(balance) 
FROM trans
WHERE k_symbol <> ''
GROUP BY type, operation, k_symbol
ORDER BY 1,2,3;

-- 5. Find the districts with more than 100 clients.
SELECT district_id, COUNT(*) 
FROM bank.client
GROUP BY district_id
HAVING COUNT(*) > 100
ORDER BY 1;

-- 6. Find the transactions (type, operation) with a mean amount greater than 10000.
SELECT type, operation, AVG(amount)
FROM trans
GROUP BY 1, 2
HAVING AVG(amount) > 10000;
USE fraud_detection;

-- Query 1
SELECT Class, COUNT(*) as Total
FROM transactions
GROUP BY Class;

-- Query 2
SELECT ROUND(SUM(Class) * 100.0 / COUNT(*), 2) 
AS Fraud_Percentage
FROM transactions;

-- Query 3
SELECT Class, ROUND(AVG(Amount), 2) as Avg_Amount
FROM transactions
GROUP BY Class;

-- Query 4
SELECT MAX(Amount) as Max_Fraud_Amount
FROM transactions
WHERE Class = 1;

-- Query 5
SELECT MIN(Amount) as Min_Fraud_Amount
FROM transactions
WHERE Class = 1;

-- Query 6
SELECT Time, Amount
FROM transactions
WHERE Class = 1
ORDER BY Amount DESC
LIMIT 10;
-- Task 2: Customer Churn Analysis SQL Queries

-- Q1 – Total Customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Q2 – Churned Customers
SELECT COUNT(*) AS churned_customers FROM customers WHERE Churn='Yes';

-- Q3 – Overall Churn Rate
SELECT ROUND(100.0*AVG(ChurnFlag),2) AS churn_rate_pct FROM customers;

-- Q4 – Average Monthly Charge
SELECT ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge FROM customers;

-- Q5 – Average Tenure
SELECT ROUND(AVG(tenure),2) AS avg_tenure_months FROM customers;

-- Q6 – Churn Rate by Contract
SELECT Contract, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY Contract ORDER BY churn_rate_pct DESC;

-- Q7 – Churn Rate by Internet Service
SELECT InternetService, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY InternetService ORDER BY churn_rate_pct DESC;

-- Q8 – Churn Rate by Payment Method
SELECT PaymentMethod, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY PaymentMethod ORDER BY churn_rate_pct DESC;

-- Q9 – Churn by Senior Citizen
SELECT SeniorCitizenLabel, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY SeniorCitizenLabel ORDER BY churn_rate_pct DESC;

-- Q10 – Churn by Partner
SELECT Partner, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY Partner ORDER BY churn_rate_pct DESC;

-- Q11 – Churn by Dependents
SELECT Dependents, COUNT(*) customers, ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers GROUP BY Dependents ORDER BY churn_rate_pct DESC;

-- Q12 – Monthly Charges by Churn
SELECT Churn, ROUND(AVG(MonthlyCharges),2) avg_monthly_charge FROM customers GROUP BY Churn;

-- Q13 – Tenure by Churn
SELECT Churn, ROUND(AVG(tenure),2) avg_tenure FROM customers GROUP BY Churn;

-- Q14 – Revenue by Contract
SELECT Contract, ROUND(SUM(TotalCharges),2) total_revenue FROM customers GROUP BY Contract ORDER BY total_revenue DESC;

-- Q15 – Customers by Contract
SELECT Contract, COUNT(*) customers FROM customers GROUP BY Contract ORDER BY customers DESC;

-- Q16 – Customers by Internet Service
SELECT InternetService, COUNT(*) customers FROM customers GROUP BY InternetService ORDER BY customers DESC;

-- Q17 – Paperless Billing Usage
SELECT PaperlessBilling, COUNT(*) customers, ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM customers),2) percentage FROM customers GROUP BY PaperlessBilling;

-- Q18 – Highest Average Monthly Charge Contract
SELECT Contract, ROUND(AVG(MonthlyCharges),2) avg_monthly_charge FROM customers GROUP BY Contract ORDER BY avg_monthly_charge DESC LIMIT 1;

-- Q19 – Month-to-Month Churn
SELECT ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers WHERE Contract='Month-to-month';

-- Q20 – Long-Tenure Churn
SELECT ROUND(100.0*AVG(ChurnFlag),2) churn_rate_pct FROM customers WHERE tenure>=12;


create database hr_analytics;
use hr_analytics;

show tables;

describe hr_tables;

Select count(*) from hr_tables;

Select distinct attrition from hr_tables;

select department , count(*) as employee_count 
from hr_tables
group by department; 

Select Attrition , count(*) as employee_count
from hr_tables
group by Attrition;

Select ROUND(
	SUM(CASE WHEN Attrition = 'Yes' then 1 else 0 end) * 100
    / count(*) , 2
) AS Attrition_rate
from hr_tables;

Select department , ROUND(
	SUM(CASE WHEN Attrition = 'Yes' then 1 else 0 end) * 100
    / count(*) , 2
) AS Attrition_rate
from hr_tables
group by department;

Select Overtime , count(*) as total_employees , 
	SUM(CASE WHEN Attrition = 'Yes' then 1 else 0 end) AS employees_left,
    ROUND(SUM(case when Attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*) , 2) as attrition_rate
from hr_tables
group by Overtime; 

Select JobSatisfaction , count(*) as total_employees , 
	ROUND(
    SUM(case when Attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*) , 2
    ) as attrition_rate
    
from hr_tables 
group by JobSatisfaction
order by JobSatisfaction asc;

SELECT
    CASE
        WHEN MonthlyIncome <= 5000 THEN 'Low'
        WHEN MonthlyIncome <= 10000 THEN 'Medium'
        ELSE 'High'
    END AS salary_band,

    COUNT(*) AS total_employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS employees_left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate

FROM hr_tables
GROUP BY salary_band
ORDER BY attrition_rate DESC;

SELECT
    CASE
        WHEN `ï»¿Age` < 30 THEN 'Low'
        WHEN `ï»¿Age` <= 40 THEN 'Medium'
        ELSE 'High'
    END AS age_band,

    COUNT(*) AS total_employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS employees_left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate

FROM hr_tables
GROUP BY age_band
ORDER BY attrition_rate DESC;



CREATE DATABASE hr_report;
use hr_report

select * from hr_attrition

ALTER TABLE hr_attrition
DROP COLUMN column21


SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition;

SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;


SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;


SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END
ORDER BY attrition_rate DESC;


SELECT 
    CASE 
        WHEN YearsAtCompany < 2 THEN '0-1 yrs'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 yrs'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 yrs'
        ELSE '10+ yrs'
    END AS tenure_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN YearsAtCompany < 2 THEN '0-1 yrs'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 yrs'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 yrs'
        ELSE '10+ yrs'
    END
ORDER BY attrition_rate DESC;


SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low (<3000)'
        WHEN MonthlyIncome BETWEEN 3000 AND 6999 THEN 'Medium (3000-6999)'
        WHEN MonthlyIncome BETWEEN 7000 AND 11999 THEN 'High (7000-11999)'
        ELSE 'Very High (12000+)'
    END AS income_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low (<3000)'
        WHEN MonthlyIncome BETWEEN 3000 AND 6999 THEN 'Medium (3000-6999)'
        WHEN MonthlyIncome BETWEEN 7000 AND 11999 THEN 'High (7000-11999)'
        ELSE 'Very High (12000+)'
    END
ORDER BY attrition_rate DESC;



SELECT 
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY OverTime
ORDER BY attrition_rate DESC;


SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


SELECT 
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


SELECT 
    CASE 
        WHEN YearsSinceLastPromotion = 0 THEN '0 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 3 THEN '1-3 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 4 AND 7 THEN '4-7 yrs'
        ELSE '8+ yrs'
    END AS promotion_gap,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN YearsSinceLastPromotion = 0 THEN '0 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 3 THEN '1-3 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 4 AND 7 THEN '4-7 yrs'
        ELSE '8+ yrs'
    END
ORDER BY attrition_rate DESC;


SELECT 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6-15 km'
        ELSE '15+ km'
    END AS distance_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6-15 km'
        ELSE '15+ km'
    END
ORDER BY attrition_rate DESC;


SELECT 
    EmployeeNumber,
    Department,
    JobRole,
    MonthlyIncome,
    OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    YearsSinceLastPromotion,
    (CASE WHEN OverTime = 1 THEN 1 ELSE 0 END
   + CASE WHEN JobSatisfaction <= 2 THEN 1 ELSE 0 END
   + CASE WHEN WorkLifeBalance <= 2 THEN 1 ELSE 0 END
   + CASE WHEN MonthlyIncome < 3000 THEN 1 ELSE 0 END
   + CASE WHEN YearsSinceLastPromotion >= 4 THEN 1 ELSE 0 END) AS risk_score
FROM hr_attrition
WHERE Attrition = 0
  AND (CASE WHEN OverTime = 1 THEN 1 ELSE 0 END
     + CASE WHEN JobSatisfaction <= 2 THEN 1 ELSE 0 END
     + CASE WHEN WorkLifeBalance <= 2 THEN 1 ELSE 0 END
     + CASE WHEN MonthlyIncome < 3000 THEN 1 ELSE 0 END
     + CASE WHEN YearsSinceLastPromotion >= 4 THEN 1 ELSE 0 END) >= 3
ORDER BY risk_score DESC, MonthlyIncome ASC;



SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition;


SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;


SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;


SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END
ORDER BY attrition_rate DESC;

SELECT 
    CASE 
        WHEN YearsAtCompany < 2 THEN '0-1 yrs'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 yrs'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 yrs'
        ELSE '10+ yrs'
    END AS tenure_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN YearsAtCompany < 2 THEN '0-1 yrs'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 yrs'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 yrs'
        ELSE '10+ yrs'
    END
ORDER BY 
attrition_rate DESC;


SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low (<3000)'
        WHEN MonthlyIncome BETWEEN 3000 AND 6999 THEN 'Medium (3000-6999)'
        WHEN MonthlyIncome BETWEEN 7000 AND 11999 THEN 'High (7000-11999)'
        ELSE 'Very High (12000+)'
    END AS income_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low (<3000)'
        WHEN MonthlyIncome BETWEEN 3000 AND 6999 THEN 'Medium (3000-6999)'
        WHEN MonthlyIncome BETWEEN 7000 AND 11999 THEN 'High (7000-11999)'
        ELSE 'Very High (12000+)'
    END
ORDER BY attrition_rate DESC;


    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY OverTime
ORDER BY attrition_rate DESC;


SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


SELECT 
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


SELECT 
    CASE 
        WHEN YearsSinceLastPromotion = 0 THEN '0 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 3 THEN '1-3 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 4 AND 7 THEN '4-7 yrs'
        ELSE '8+ yrs'
    END AS promotion_gap,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN YearsSinceLastPromotion = 0 THEN '0 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 3 THEN '1-3 yrs'
        WHEN YearsSinceLastPromotion BETWEEN 4 AND 7 THEN '4-7 yrs'
        ELSE '8+ yrs'
    END
ORDER BY attrition_rate DESC;

SELECT 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6-15 km'
        ELSE '15+ km'
    END AS distance_band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    CAST(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS attrition_rate
FROM hr_attrition
GROUP BY 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6-15 km'
        ELSE '15+ km'
    END
ORDER BY attrition_rate DESC;



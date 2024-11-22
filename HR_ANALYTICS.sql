select* from hr_analytics;


----- Count employees by department and gender-- 
select Department, Gender , count(*) as employeecount
from hr_analytics
group by Department,Gender;

-- --Average age of employees by gender---- 
select avg(age) as AvgAge , Gender
from hr_analytics
group by Gender;


----- Total attrition count by department.----- 
select count(Attrition) as AttritionCount, Department
from hr_analytics
where Attrition = "Yes"
group by Department;


----- Correlation between work-life balance and attrition. ---- 
SELECT WorkLifeBalance, COUNT(*) AS AttritionCount
FROM hr_analytics
WHERE Attrition = 'Yes'
GROUP BY WorkLifeBalance;



------ Attrition rate by age group ------ 
select AgeGroup, count(Attrition)*100 /(select  count(*) from hr_analytics)
from hr_analytics
where Attrition= "Yes"
group by AgeGroup;


----- Average daily rate by education field---- 
select EducationField, count(Attrition)*100 /(select  count(*) from hr_analytics)
from hr_analytics
where Attrition= "Yes"
group by EducationField;


------ Distribution of stock option levels----- 
SELECT StockOptionLevel, COUNT(*) AS EmployeeCount
FROM hr_analytics
GROUP BY StockOptionLevel;

---- Average training time last year by department.----- 
select avg(TrainingTimesLastYear), Department
from hr_analytics
group by Department;


------ Relationship between years at the company and promotion------
SELECT YearsAtCompany, AVG(YearsSinceLastPromotion) AS AvgYearsSincePromotion
FROM hr_analytics
GROUP BY YearsAtCompany;


---- Relationship between satisfaction levels and attrition----- 
 SELECT JobSatisfaction, COUNT(*) AS AttritionCount
FROM hr_analytics
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction;

-- -- Distribution of employees by age group and department---- 
SELECT AgeGroup, Department, COUNT(*) AS EmployeeCount
FROM hr_analytics
GROUP BY AgeGroup, Department;


---- Gender distribution within each job role---- 
select JobRole, count(*)
from hr_analytics
group by JobRole;


---- Identify departments with the highest attrition rates---- 
select Department , count(*)*100/(select count(*) from hr_analytics ) as highestAttritionRate
from hr_analytics
where Attrition='Yes'
group by Department
order by  highestAttritionRate desc;


---- Correlation between stock option levels and job roles---- 
SELECT JobRole, StockOptionLevel, COUNT(*) AS EmployeeCount
FROM hr_analytics
GROUP BY JobRole, StockOptionLevel;



------- Highest-paying departments based on average daily rate---------;
 
 
 Select Department, avg(DailyRate) aS AvgDailyRate
from hr_analytics
group by Department
order by AvgDailyRate desc;


------ Analyze total working years across departments----- 

select Count(TotalWorkingYears) ,Department
from hr_analytics
group by Department;


----- Distribution of employees by performance ratings------ 
select count(EmployeeCount), PerformanceRating
from hr_analytics
	group by 	PerformanceRating;
    
    
    ------ Training times last year grouped by job role----- 
    SELECT JobRole, AVG(TrainingTimesLastYear) AS AvgTrainingTime
FROM hr_analytics
GROUP BY JobRole
ORDER BY AvgTrainingTime DESC;


------ Relationship between education level and years at the company------
SELECT Education, AVG(YearsAtCompany) AS AvgYearsAtCompany
FROM hr_analytics
GROUP BY Education;


 

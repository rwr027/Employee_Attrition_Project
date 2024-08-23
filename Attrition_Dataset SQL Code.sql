--SQL Code:

---Question 1
-- Select demographic categories and calculate attrition metrics
SELECT 
    -- Demographic categories for grouping
    Age,
    Gender,
    Education,
    MaritalStatus,

    -- Count the total number of employees in each demographic group
    COUNT(*) AS TotalEmployees,

    -- Sum the Attrition column to get the total number of employees who left
    SUM(CAST(Attrition AS INT)) AS AttritionCount,

    -- Calculate the attrition percentage
    -- Sum the Attrition column to get the number of employees who left
    -- Divide by the total number of employees
    -- Multiply by 100 to get the percentage
    -- Round the result to two decimal places
    FORMAT((SUM(CAST(Attrition AS INT)) * 100.0 / COUNT(*)), 'N2') AS AttritionPercentage

FROM 
    -- Pulling the information from Attrition_Dataset
    Projects.dbo.Attrition_Dataset

-- Group the results by the selected demographic categories
GROUP BY 
    Age,
    Gender,
    Education,
    MaritalStatus

-- Order the results by the attrition percentage in descending order to show the groups
--with the highest attrition rates.
ORDER BY 
    AttritionPercentage DESC;
	
	
--Question 2:
-- Analyze the correlation between length of service (tenure) and employee attrition
SELECT 
    -- Select the tenure group by using YearsAtCompany column
    YearsAtCompany,

    -- Count the total number of employees for each tenure group
    COUNT(*) AS TotalEmployees,

    -- Sum the Attrition column to get the total number of employees who left
    SUM(CAST(Attrition AS INT)) AS AttritionCount,

    -- Calculate and format the attrition percentage with two decimal places
    FORMAT((SUM(CAST(Attrition AS INT)) * 100.0 / COUNT(*)), 'N2') AS AttritionPercentage

FROM 
    
    Projects.dbo.Attrition_Dataset

-- Group the results by the tenure group (YearsAtCompany)
GROUP BY 
    YearsAtCompany

-- Order the results by YearsAtCompany to show trends as tenure increases
ORDER BY 
    YearsAtCompany ASC;
	
	
--Question 3
-- Analyze which departments have the highest attrition rates
SELECT 
    -- Select the department
    Department,

    -- Count the total number of employees in each department
    COUNT(*) AS TotalEmployees,

    -- Sum the Attrition column to get the total number of employees who left
    SUM(CAST(Attrition AS INT)) AS AttritionCount,

    -- Calculate and format the attrition percentage with two decimal places
    FORMAT((SUM(CAST(Attrition AS INT)) * 100.0 / COUNT(*)), 'N2') AS AttritionPercentage

FROM 
    
    Projects.dbo.Attrition_Dataset

-- Group the results by the department
GROUP BY 
    Department

-- Order the results by attrition percentage in descending order
-- This helps to identify departments with the highest attrition rates
ORDER BY 
    AttritionPercentage DESC;
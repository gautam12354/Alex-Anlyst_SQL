-- Limit is just going to specify how many rows you want in the output

# top 3 rows
SELECT *
FROM employee_demographics
LIMIT 3;

# limit with order by
SELECT *
FROM employee_demographics
order by age desc
LIMIT 3;

-- now there is an additional paramater in limit which we can access using a comma that specifies the starting place

# top 4 Rows
SELECT *
FROM employee_demographics
order by age desc
LIMIT 4;


# limit 3 rows, and dislay 1 row after that(i.e 4th row).
SELECT *
FROM employee_demographics
order by age desc
LIMIT 3, 1;


-- ALIASING

-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series

# we can use the keyword AS to specify we are using an Alias (Temporay)
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender
having avg(age) > 40;

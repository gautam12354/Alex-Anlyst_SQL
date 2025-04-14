-- Grup BY --> it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them 

Use parks_and_recreation

# Used for agregte function
SELECT gender, avg(age), Max(age), MIN(age), count(age)
FROM employee_demographics
group by gender
;

# more than one grouping
SELECT occupation, salary
FROM employee_salary
group by occupation, salary
;

-- ORDER BY 
-- (Sort result as or desc order)

# Order by (By default it is accending)
SELECT *
FROM employee_demographics
order by first_name;

# Order by Desc
SELECT *
FROM employee_demographics
order by first_name Desc;

# both column
SELECT *
FROM employee_demographics
order by gender,age;

#now we don't actually have to spell out the column names. We can actually just use their column position

#State is in position 8 and money is in 9, we can use those as well.
SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;




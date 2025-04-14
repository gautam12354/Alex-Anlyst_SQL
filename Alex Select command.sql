-- (SELECT STATEMENET)

-- the SELECT statement is used to work with columns and specify what columns you want to work see in your output. 

#We can also select a specefic number of column based on our requirement. 


# select Database which we are using
use parks_and_recreation

# Select everything
SELECT * FROM parks_and_recreation.employee_demographics;

#Let's try selecting a specific column
SELECT first_name FROM parks_and_recreation.employee_demographics;

# Seprate more than one colum
SELECT first_name, last_name
FROM employee_demographics;

# calcullate colum 
SELECT first_name, last_name,age,
age+10
FROM employee_demographics;

# calculate colum  based on PEMDAS
#Math in SQL does follow PEMDAS which stands for Parenthesis, Exponent, Multiplication,
#Division, Addition, subtraction - it's the order of operation for math.
SELECT first_name, last_name,age,
(age+10)*10 +10
FROM employee_demographics;

# Distinct select unique value in column
SELECT distinct first_name
FROM employee_demographics;

# Distinct select unique value between two column
SELECT distinct first_name, gender
FROM employee_demographics;
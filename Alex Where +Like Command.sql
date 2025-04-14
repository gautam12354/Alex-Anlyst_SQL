#WHERE Clause:
#-------------
#The WHERE clause is used to filter records (rows of data)
#It's going to extract only those records that fulfill a specified condition.

# Equall to
SELECT * FROM employee_salary
Where first_name = "Leslie";

# Not Equal to
SELECT * FROM employee_demographics
Where gender != "Female";

# Greater than
SELECT * FROM employee_salary
WHERE salary > 50000;

# Greater than and equal
SELECT * FROM employee_salary
WHERE salary >= 50000;

# Lesser than and equal
SELECT * FROM employee_salary
WHERE salary <= 50000;

# based on Date column
SELECT * FROM employee_demographics
Where birth_date > '1985-01-01';

-- Logical operator (AND,OR,NOT)
# AND
SELECT * FROM employee_demographics
Where birth_date > '1985-01-01' AND gender = 'male';

# OR
SELECT * FROM employee_demographics
Where birth_date > '1985-01-01' OR gender = 'male';

# OR NOT
SELECT * FROM employee_demographics
Where birth_date > '1985-01-01' OR NOT gender = 'female';

# based on PEMDAS
SELECT * FROM employee_demographics
Where (first_name = 'Leslie' AND age = 44) OR age > 55;

-- Like Statement (Specefic Sequence finder)
-- % (Anything) and __(Specific value)
# we looked for pattern not look for exact match.

# % (Anything) --> start with a
SELECT * FROM employee_demographics
Where first_name Like 'a%'

# % (Anything) --> end with a
SELECT * FROM employee_demographics
Where first_name Like '%a';

# __(Specific value) start with letter 'a' and after that two charactor in it
SELECT * FROM employee_demographics
Where first_name Like 'a__';

# __(Specific value) start with letter 'a' and after that two charactor in it and anything after that.
SELECT * FROM employee_demographics
Where first_name Like 'a__%';

# With date
SELECT * FROM employee_demographics
Where birth_date Like '1989%';




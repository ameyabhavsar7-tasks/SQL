-- text function

-- len,trim

select length("hello")as length,upper("hello"),lower("HELLO"),left("hello",3),
right("hello",2),mid("hello",2,3);

select length("  hello"),length(trim("  hello"));

select concat("hello"," ","all"); 

-- Question 1
select * from customer; 

-- Question 2
select upper(FirstName) from customer;

-- Question 3
select lower(FirstName) from customer;

-- Question 4
select sum(count(FirstName)) from customer;

-- Question 5
select left(FirstName,3) from customer;

-- Question 6
select concat(FirstName," ",LastName)from customer; 

-- maths 

select round(7.5),round(7.4),abs(-7),ceil(8.9),floor(8.9),mod(3,2);

-- date
select current_date(),now(),year(now()),day(now()),month(now());

-- Question 7
select * from customer; 

-- Question 8
select Current_date();

-- Question 9
select now();

-- Question 10
select year(dateofbirth) from customer;

-- Question 11
select month(dateofbirth) from customers;

-- Question 12
select datediff(current_date(),dateofbirth) from customer;

-- Question 13
select dateofbirth from customers
order by dateofbirth desc
limit 1;

-- Question 14
select dateofbirth from customer
order by dateofbirth
limit 1;

-- Question 15
-- Display 'Not Available' if a phone number is NULL

select *, ifnull(phone,"Not Available") from customer;

-- Question 16
-- Calculate the total balance maintained across all customer accounts.
select customerID,sum(balance) from accounts
group by customerID; 

-- Question 17
-- Calculate the average balance maintained across all customer accounts to understand the typical amount
-- held by customers.
select accountType,avg(balance) from accounts
group by accountType;

select * from accounts;

-- Question 18
-- Identify the highest balance maintained in any customer account
select max(balance) from accounts;

select customerID, max(balance) from accounts
group by customerID
order by max(balance) desc
limit 1;

-- Question 19
-- Identify the lowest balance maintained in any customer account
select min(balance) from accounts;

select customerID, min(balance) from accounts
group by customerID
order by min(balance)
limit 1;

select * from accounts;

-- Question 20
-- Determine the total number of customer accounts available in the system.
select count(*) from accounts;

select AccountType, count(*) from accounts
group by AccountType;

-- Question 21
-- The bank wants to calculate the total account balance for each AccountType by grouping the records
-- based on AccountType and identify which account type is attracting the highest total deposits from customers.
select AccountType, sum(balance) from accounts
group by AccountType
order by sum(balance)
limit 1;

-- Question 22
-- The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000
select AccountType, sum(balance) from accounts
group by AccountType
having sum(balance)>=25000; 


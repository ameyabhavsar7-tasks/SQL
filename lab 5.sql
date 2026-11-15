-- The finance team wants to review only Savings and Current account holders.
select * from accounts
where AccountType="saving" or AccountType="Current";

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transactions where TransactionType in ("deposit","Witdrawal");

-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
select * from customer where customerID in (101,102,105);

-- Display accounts belonging to Salary and Savings account types
select * from accounts where accountType in ("Savings","Salary");

-- Retrieve transactions for Payment and Deposit categories
select * from transactions where TransactionType in ("Payments","Deposit");

-- Display customer records for CustomerID 103 and 104
select * from customer where customerID in (103,104);

-- Retrieve selected account records using AccountID values 201
select * from accounts where AccountID = 201;

-- Display Customers in Ascending Order of Last Name
select * from customer order by LastName ASC; 

-- Display Accounts with Highest Balance First
select * from Accounts order by Balance DESC limit 1;

-- Display Transactions Sorted by Transaction Date 
select * from Transactions order by TransactionDate asc;

-- Display customers sorted by FirstName
select * from customer order by FirstName asc; 

-- Display accounts sorted by AccountType
select * from accounts order by AccountType asc;

-- Display transactions sorted by Amount in descending order
select * from transactions order by amount desc;

-- Display customers sorted by DateOfBirth
select * from customer order by DateofBirth asc;

-- Display Only Top 5 Highest Balance Accounts
select * from accounts order by Balance desc limit 5;

-- Display First 3 Customer Records
select * from customer limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transactions limit 2 offset 3;

-- Display top 5 transactions with highest amount
select * from transactions order by amount desc limit 5;

-- Display top 3 transactions with highest amount
select * from transactions order by amount desc limit 3;

-- Retrieve only 4 customer records
select * from customer limit 4;

-- Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;


select transactionType,sum(Amount) from transactions
group by transactiontype
order by sum(Amount) desc;

select customerID,sum(loanAmount) from loans
group by customerID
having customerID= 101;



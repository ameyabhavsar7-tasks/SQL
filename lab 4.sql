-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance
-- Question 1
select AccountID,AccountType,Balance from accounts; 

-- Question 2 
 select * from accounts 
 where AccountType="Savings"; 
 
 -- Question 3
 select * from accounts
 where Balance >25000; 
 
 -- Question 4
 select * from accounts
 where Balance>5000 and Balance<20000; 
 
 -- Question 5
 select * from customer
 where customerID=101 or customerID=102 or customerID=103 or customerID=104; 
 
 select * from customer
 where CustomerID in (101,102,103,104); 
 
 -- Question 6
 select * from customer
 where FirstName like "R%"; 
 
 -- Question 7
 select * from accounts; 
 
 -- Question 8
 select * from accounts
 where balance <15000; 
 
 -- Question 9
 select * from transactions
 where amount>1000 and amount<10000; 
 
 -- Question 10
 select * from customer
 where customerID in (104,105); 
 
 -- Question 11
 select * from customer
 where LastName like "S%";
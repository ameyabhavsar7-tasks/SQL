create database Bank;

use Bank;

create table customer(customerID int,FirstName varchar(50),LastName varchar(100),Email varchar(100),Phone int);

create table Accounts(AccountID int, AccountType Varchar(20), Balance decimal(10,2)); 

select * from Accounts; 

create table Transactions(TransactionID int,TransactionDate Date,Amount decimal(10,2),TransactionType varchar(20)); 

select * from Transactions; 

create table Branches(BranchID int, BranchName varchar(50), BranchAddress varchar(50), BranchPhone Varchar(15)); 

select * from Branches; 

create table AccountBranches(AssignmentDate Date); 

select * from AccountBranches; 

create table Loans(LoanID int,LoanAmount decimal(10,2),InterestRate decimal(10,2),StartDate Date,EndDate Date); 

alter table customer add column DateOfBirth date; 

 alter table customer modify phone varchar(20); 
 
 select * from customer;

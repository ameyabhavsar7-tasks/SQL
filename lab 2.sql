create database bankingdb;
use bankingdb; 

create table customer(customerID int,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),Phone VARCHAR(20),DateofBirth DATE);
alter table customer add constraint primary key (customerID);
alter table customer add constraint unique (Email);
alter table customer modify FirstName varchar(50) not null; 


create table Accounts(AccountID int, AccountType Varchar(20), Balance decimal(10,2)); 
alter table Accounts add constraint primary key(AccountID);
alter table Accounts add column customerID int; 
alter table Accounts add column BranchID int; 
alter table Accounts add constraint foreign key(customerID) references customer(customerID); 
alter table Accounts add constraint foreign key(BranchID) references Branches(BranchID); 

create table Loans(LoanID int,LoanAmount decimal(10,2),InterestRate decimal(10,2),StartDate Date,EndDate Date); 
alter table Loans add column customerID int; 
alter table Loans add constraint primary key(LoanID);
alter table Loans add constraint foreign key(customerID) references customer(customerID);

create table Transactions(TransactionID int,TransactionDate Date,Amount decimal(10,2),TransactionType varchar(20)); 
alter table Transactions add constraint primary key(TransactionID); 
alter table Transactions add column AccountID int; 
alter table Transactions add constraint foreign key(AccountID) references Accounts(AccountID);

create table Branches(BranchID int, BranchName varchar(50), BranchAddress varchar(50), BranchPhone Varchar(15)); 
alter table Branches add constraint primary key(BranchID); 

create table stu(name varchar(200),marks int); 

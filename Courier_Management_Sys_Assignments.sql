create database courier_management_system_Assignment
--creating table users
create table Users  
(UserID INT PRIMARY KEY,  
Username VARCHAR(255),  
Email VARCHAR(255) UNIQUE,  
User_Password VARCHAR(255),  
ContactNumber VARCHAR(20),  
User_Address TEXT  
); 
--insert data into users table
insert into Users values(100,'Dhoni','dhoni@gmail.com','passwd@123', 9745367230, 'Chennai');
insert into Users values(101,'Rohit','rohit@gmail.com','passwd@456', 9745673969, 'Mumbai');
insert into Users values(102, 'Arjun', 'arjun@gmail.com', 'Warrior@07', 9876543211, 'Hyderabad');
insert into Users values(103, 'Vikram', 'vikram@gmail.com', 'Hero@22', 9764312457, 'Pune');
insert into Users values(104, 'Neha', 'neha@gmail.com', 'Neha@1995', 9845123790, 'Bangalore');
insert into Users values(105, 'Rahul', 'rahul_singh@gmail.com', 'Singh@123', 9922334456, 'Lucknow');
insert into Users values(106, 'Sneha', 'sneha@gmail.com', 'Sneha@55', 9988776656, 'Jaipur');
insert into Users values(107, 'Manoj', 'manoj@gmail.com', 'Manoj@88', 9876123457, 'Bhopal');
insert into Users values(108, 'Priya', 'priya@gmail.com', 'Priya@99', 9955667789, 'Chandigarh');
insert into Users values(109, 'Ramesh', 'ramesh@gmail.com', 'Ramesh@77', 9933221101, 'Chennai');
insert into Users values(110, 'Swati', 'swati@gmail.com', 'Swati@63', 9877564322, 'Kolkata');

--creating table couriers
create table Couriers (CourierID INT PRIMARY KEY,  
SenderName VARCHAR(255),  
SenderAddress TEXT,  
ReceiverName VARCHAR(255),  
ReceiverAddress TEXT,  
Courier_Weight DECIMAL(5, 2),  
Courier_Status VARCHAR(50),  
TrackingNumber VARCHAR(20) UNIQUE,  
DeliveryDate DATE);  
insert into Couriers values(111,'Dhoni','Chennai','Rohit','Mumbai', 4.5,'Delivered','TRCK12345','2025-03-22');
insert into Couriers values(112,'Alice','London','Bob','Paris',6,'Pending','TRCK6789','2025-03-21');
insert into Couriers values(113,'Dhoni','Chennai','Rohit','Mumbai', 4.5,'Delivered','TRCK123456','2025-03-22');
insert into Couriers values(114,'Dhoni','Chennai','Rohit','Mumbai', 4.5,'Delivered','TRCK123457','2025-03-22'); 
insert into Couriers values(115, 'Arjun', 'Hyderabad', 'Vikram', 'Pune', 5.0, 'In Transit', 'TRCK11111', '2025-03-20');
insert into Couriers values(116, 'Neha', 'Delhi', 'Rahul', 'Lucknow', 3.8, 'Delivered', 'TRCK22222', '2025-03-18');
insert into Couriers values(117, 'Sneha', 'Bangalore', 'Manoj', 'Chennai', 4.2, 'Pending', 'TRCK33333', '2025-03-23');
insert into Couriers values(118, 'Karthik', 'Mumbai', 'Swati', 'Jaipur', 6.5, 'Delivered', 'TRCK44444', '2025-03-19');
insert into Couriers values(119, 'Ramesh', 'Kolkata', 'Priya', 'Bhopal', 7.0, 'In Transit', 'TRCK55555', '2025-03-24');
insert into Couriers values(120, 'Amit', 'Ahmedabad', 'Sunita', 'Surat', 2.9, 'Pending', 'TRCK66666', '2025-03-25');
insert into Couriers values(121, 'Pooja', 'Coimbatore', 'Ravi', 'Hyderabad', 5.8, 'Delivered', 'TRCK77777', '2025-03-21');

--creating table couriers_services
create table Courier_Services(ServiceID INT PRIMARY KEY,  
ServiceName VARCHAR(100),  
Cost DECIMAL(8, 2)); 

insert into Courier_Services values( 1, 'Standard Delivery', 50.00);
insert into Courier_Services values( 2, 'Speed Delivery', 100.00);
insert into Courier_Services values
(4, 'Fast Track', 120.00),
(5, 'SafeShip', 130.00),
(6, 'QuickPost', 110.00),
(7, 'Standard Express', 170.00),
(8, 'BlueDart Express', 180.00),
(9, 'Overnight Express', 200.00),
(10, 'AirFast Delivery', 250.00),
(11, 'LogiSpeed', 140.00);

--creating table employee
create table employee(EmployeeID INT PRIMARY KEY,  
Employee_Name VARCHAR(255),  
Email VARCHAR(255) UNIQUE,  
ContactNumber VARCHAR(20),  
Employee_Role VARCHAR(50),  
Salary DECIMAL(10, 2)); 

insert into employee values(1, 'Indhu', 'indhu@gmail.com', 9876543211, 'Delivery Person', 30000.00);
insert into employee values(2, 'Sara', 'sara@gmail.com', 9876543212, 'Manager', 50000.00);
insert into employee values (3, 'Arun', 'arun@gmail.com', 9876543213, 'Supervisor', 45000.00);
insert into employee values (4, 'Priya', 'priya@gmail.com', 9876543214, 'Assistant Manager', 48000.00);
insert into employee values (5, 'Karthik', 'karthik@gmail.com', 9876543215, 'HR', 42000.00);
insert into employee values (6, 'Deepa', 'deepa@gmail.com', 9876543216, 'Software Engineer', 60000.00);
insert into employee values (7, 'Vignesh', 'vignesh@gmail.com', 9876543217, 'Data Analyst', 55000.00);
insert into employee values (8, 'Anitha', 'anitha@gmail.com', 9876543218, 'Team Lead', 58000.00);
insert into employee values(9, 'Saravanan', 'saravanan@gmail.com', 9876543219, 'Marketing Executive', 47000.00);
insert into employee values(10, 'Meena', 'meena@gmail.com', 9876543220, 'Sales Manager', 52000.00);
insert into employee values (11, 'Ravi', 'ravi@gmail.com', 9876543221, 'Customer Support', 40000.00);

--creating table location
create table Courier_Location (LocationID INT PRIMARY KEY,  
LocationName VARCHAR(100),  
Courier_Address TEXT);

insert into Courier_Location values 
(1, 'Hexaware', 'Chennai'),
 (2, 'T. Nagar', 'Chennai'),
(3, 'Velachery', 'Chennai'),
(4, 'Tambaram', 'Chennai'),
(5, 'Anna Nagar', 'Chennai'),
(6, 'Gandhipuram', 'Coimbatore'),
(7, 'RS Puram', 'Coimbatore'),
(8, 'Sathy Road', 'Erode'),
 (9, 'Gandhi Road', 'Salem'),
(10, '100 Feet Road', 'Madurai'),
 (11, 'KK Nagar', 'Trichy');
 --creating table payment
create table Payment(PaymentID INT PRIMARY KEY,  
CourierID INT,  
LocationId INT,  
Amount DECIMAL(10, 2),
PaymentDate DATE,  
FOREIGN KEY (CourierID) REFERENCES Couriers(CourierID),  
FOREIGN KEY (LocationID) REFERENCES Courier_Location(LocationID)); 
insert into Payment values (101, 111, 1, 50.00, '2025-03-21'),
 (102, 112, 2, 100.00, '2025-03-25'),
 (103, 113, 3, 150.00, '2025-03-26'),
 (104, 114, 4, 120.00, '2025-03-27'),
 (105, 115, 5, 130.00, '2025-03-28'),
 (106, 116, 6, 110.00, '2025-03-29'),
 (107, 117, 7, 170.00, '2025-03-30'),
 (108, 118, 8, 180.00, '2025-03-31'),
 (109, 119, 9, 200.00, '2025-04-01'),
 (110, 120, 10, 250.00, '2025-04-02'),
 (111, 121, 11, 140.00, '2025-04-03');


 --ASSIGNMENT 2
--list all the customers
select Username from Users;
--list all the order for customer
select * from Couriers where SenderName='Dhoni';
--list all the couriers
select * from Couriers
--list all packages for a specific order
select * from Couriers where CourierID=111;
--list all the undelivered packages
select * from Couriers where Courier_Status!='delivered';
--list all deliveries for a specific courier
select * from Couriers where CourierID=112;
--list all the packages to be delivered today
select * from Payment where PaymentDate=cast(getdate() as date);
--list all packages with the specific status
select * from Couriers where Courier_Status='delivered';
--calculate the total number of packages for each courier
select count(*),CourierId from Couriers group by CourierID;
--Find the average delivery time for each courier  

--Retrieve employees whose names contain 'John
select Employee_Name from employee where Employee_Name='John';
--list all the packages with specific weight range
select * from Couriers where Courier_Weight Between 4 and 6;
--courier records with payment greater than 50
select * from Payment where Amount>50;
 

--ASSIGNMENT 3
--Find the total number of couriers handled by each employee
select count(*) as total_couriers, e.Employee_Name from couriers c full outer join  employee e on c.CourierID=e.EmployeeID group by Employee_name

--Calculate the total revenue generated by each location
select sum(Amount) as tot_rev , l.LocationName from Payment p join Courier_Location l on p.LocationId=l.LocationID group by LocationName

--Find the total number of couriers delivered to each location.  
select count(*) couriers ,l.LocationName from Couriers c full outer join Courier_Location l on c.CourierID=l.LocationID group by LocationName

--Find the courier with the highest average delivery time:  
--by assuming payment date as start and delivery date as end 
select top 1 c.courierID, avg(datediff(day,p.PaymentDate,c.DeliveryDate)) as avg_delivery_time from Couriers c join Payment p on c.CourierID=p.CourierID group by c.CourierID order by avg_delivery_time desc ;   

-- Find Locations with Total Payments Less Than a Certain Amount  
--let the amount be 100
SELECT cl.LocationID, cl.LocationName, SUM(p.Amount) AS Total_Payments
FROM Courier_Location cl
LEFT JOIN Payment p ON cl.LocationID = p.LocationID
GROUP BY cl.LocationID, cl.LocationName
HAVING SUM(p.Amount) < 100;

--Calculate Total Payments per Location  
select sum(Amount) as tot_payments 

--Retrieve couriers who have received payments totaling more than 50 in a specific location (LocationID = X):  
select c.CourierID, SUM(p.Amount) AS Total_Payments from Payment p join Couriers c ON p.CourierID = c.CourierID
where p.LocationID = 2
group by c.CourierID
having sum(p.Amount) > 50;

--Retrieve couriers who have received payments totaling more than 50 after a certain date (PaymentDate > 'YYYY-MM-DD'): 
select c.CourierID, SUM(p.Amount) AS Total_Payments,p.PaymentDate from Payment p join Couriers c ON p.CourierID = c.CourierID
where p.PaymentDate >'2025-03-21'
group by c.CourierID , p.PaymentDate
having sum(p.Amount) > 50;

--Retrieve Payments with Courier Information  
select * from Payment p join Couriers c on p.CourierID=c.CourierID

 --Retrieve Payments with Location Information  
 select * from Payment p join Courier_Location l on p.LocationId=l.LocationID

 -- Retrieve Payments with Courier and Location Information  
 select p.*, c.*, cl.* from Payment p full outer join Couriers c ON p.CourierID = c.CourierID full OUTER JOIN Courier_Location cl ON p.LocationID = cl.LocationID;

 --List all payments with courier details  
 select * from Payment p left join Couriers c on p.CourierID=c.CourierID

 --Total payments received for each courier 
 select CourierID, sum(Amount) as total_payments from Payment group by CourierID

 --List payments made on a specific date 
 select PaymentDate,Amount from Payment group by PaymentDate,Amount

 --Get Courier Information for Each Payment  
 select p.PaymentID,c.* from payment p join Couriers c on p.CourierID=c.CourierID

 --Get Payment Details with Location  
select p.*,l.* from payment p join Courier_Location l on p.LocationId=l.LocationID

--Calculating Total Payments for Each Courier  
select sum(Amount) as total_amount, c.CourierID from Payment p join Couriers c on p.CourierID=c.CourierID group by c.CourierID

--List Payments Within a Date Range 
select * from payment where PaymentDate between '2025-03-20' and '2025-03-26'

--Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side
select u.*,c.* from Couriers c full outer join Users u on u.Username=c.SenderName

--Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side
select c.*,cs.* from Couriers c full outer join Courier_Services cs on c.SenderName=cs.ServiceName

-- Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side 
select e.*,p.* from employee e full outer join Payment p on e.EmployeeID=p.PaymentID 

 --List all users and all courier services, showing all possible combinations.
 select u.*,cs.* from Users u cross join Courier_Services cs

 --List all employees and all locations, showing all possible combinations:  
 select e.*,l.* from employee e cross join Courier_Location l

 --Retrieve a list of couriers and their corresponding sender information (if available)  
 select CourierID, SenderName ,SenderAddress from Couriers

 --Retrieve a list of couriers and their corresponding receiver information (if available):
  select CourierID, ReceiverName,ReceiverAddress from Couriers

--Retrieve a list of couriers along with the courier service details (if available)
select c.*,cs.* from Couriers c join Courier_Services cs on c.CourierID=cs.ServiceID 

--Retrieve a list of locations and the total payment amount received at each location: 
select l.LocationName, sum(Amount) as total_payment from Payment p join Courier_Location l on p.LocationID=l.LocationID group by LocationName
--Retrieve all couriers sent by the same sender (based on SenderName).
select * from couriers where SenderName='Dhoni';
--List all employees who share the same role.
select * from employee where Employee_Role='Manager';
--Retrieve all payments made for couriers sent from the same location. 
select p.*,l.LocationName from Payment p join Courier_Location l on p.LocationID=l.LocationID where LocationName='Hexaware'

Scope: Inner Queries, Non Equi Joins, Equi joins,Exist,Any,All  
--Find couriers that have a weight greater than the average weight of all couriers  
select * from Couriers where Courier_Weight>(select avg(Courier_Weight) from Couriers)
--Find the names of all employees who have a salary greater than the average salary:
select Employee_Name , Salary from employee where Salary>(select avg(Salary) from employee)
--Find the total cost of all courier services where the cost is less than the maximum cost
select sum(Cost) as total_cost from  Courier_Services where Cost < (select max(Cost) from Courier_Services)
--Find all couriers that have been paid for  
select c.* from Couriers c where exists (select 1 from payment p where p.CourierID=c.CourierID)
--Find the locations where the maximum payment amount was made  
select l.*,p.Amount from Courier_Location l join Payment P on l.LocationID=p.LocationID where p.Amount=(select max(Amount)from Payment p)

-- Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender (e.g., 'SenderName'): 
select * from Couriers where Courier_Weight> all(Select Courier_Weight from Couriers where SenderName='Dhoni')




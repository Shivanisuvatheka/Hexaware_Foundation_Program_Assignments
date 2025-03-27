create database Crime_management
-- Create tables
CREATE TABLE Crime (
CrimeID INT PRIMARY KEY,
IncidentType VARCHAR(255),
IncidentDate DATE,
Location VARCHAR(255),
Description TEXT,
Status VARCHAR(20)
);
INSERT INTO Crime (CrimeID, IncidentType, IncidentDate, Location, Description, Status)
VALUES
(1, 'Robbery', '2023-09-15', '123 Main St, Cityville', 'Armed robbery at a convenience store', 'Open'),
(2, 'Homicide', '2023-09-20', '456 Elm St, Townsville', 'Investigation into a murder case', 'Under
Investigation'),
(3, 'Theft', '2023-09-10', '789 Oak St, Villagetown', 'Shoplifting incident at a mall', 'Closed');
INSERT INTO Crime (CrimeID, IncidentType, IncidentDate, Location, Description, Status)
VALUES
(4,'MissingCase','2023-09-11', '342 Main Street,Chennai','Investigation the reasons for missing','Open'),
(5,'Theft','2023-09-12', '756, Raja Street, chennai', 'Chain snatching in the public','Closed'),
(6,'Murder','2023-09-18','743, Paari Street, Coimbatore','Murder due to personal vengence','Closed'),
(7,'Robbery','2023-09-22','123 Oat St, Villagetown', 'Robbery in the cinema theatre','Open'),
(8,'Missing case','2023-09-24', 'Kambar Street, Madurai','Child Mising case','Closed'),
(9, 'Homicide', '2023-09-26', '456 Elm St, Townsville', 'Investigation into a murder case', 'Under
Investigation'),
(10, 'Theft', '2023-09-28', '789 Oak St, Villagetown', 'Theft that deals with drugs', 'Closed');
INSERT INTO Crime (CrimeID, IncidentType, IncidentDate, Location, Description, Status)
VALUES 
(11, 'Theft', '2023-09-30', '789 Oak St, Villagetown', 'Theft that deals with drugs', 'Closed');
INSERT INTO Crime (CrimeID, IncidentType, IncidentDate, Location, Description, Status)
VALUES 
(12, 'Theft', '2023-10-1', '789 Oak St, Villagetown', 'Theft that deals with drugs', 'Under Investigation');
CREATE TABLE Victim (
VictimID INT PRIMARY KEY,
CrimeID INT,
Name VARCHAR(255),
ContactInfo VARCHAR(255),
Injuries VARCHAR(255),
FOREIGN KEY (CrimeID) REFERENCES Crime(CrimeID)
);
INSERT INTO Victim (VictimID, CrimeID, Name, ContactInfo, Injuries)
VALUES
(1, 1, 'John Doe', 'johndoe@example.com', 'Minor injuries'),
(2, 2, 'Jane Smith', 'janesmith@example.com', 'Deceased'),
(3, 3, 'Alice Johnson', 'alicejohnson@example.com', 'None');
INSERT INTO Victim (VictimID, CrimeID, Name, ContactInfo, Injuries)
VALUES
(4,4,'Nick','nick@example.com','Minor injuries'),
(5, 5, 'George','george@example.com','Deceased'),
(6, 6, 'Maxwell','max@example.com','Deceased'),
(7, 7, 'Loki','loki@example.com','Minor injuries'),
(8, 8, 'Shiva','shiva@example.com','None'),
(9, 9, 'Watson','watson@example.com','Minor injuries'),
(10, 10, 'Thor','thor@example.com','None');
INSERT INTO Victim (VictimID, CrimeID, Name, ContactInfo, Injuries)
VALUES(11, 11, 'Suspect 2','suspect2@example.com','None');

CREATE TABLE Suspect (
SuspectID INT PRIMARY KEY,
CrimeID INT,
Name VARCHAR(255),
Description TEXT,
CriminalHistory TEXT,
FOREIGN KEY (CrimeID) REFERENCES Crime(CrimeID)
);

INSERT INTO Suspect (SuspectID, CrimeID, Name, Description, CriminalHistory)
VALUES
(1, 1, 'Robber 1', 'Armed and masked robber', 'Previous robbery convictions'),
(2, 2, 'Unknown', 'Investigation ongoing', NULL),
(3, 3, 'Suspect 1', 'Shoplifting suspect', 'Prior shoplifting arrests');
INSERT INTO Suspect (SuspectID, CrimeID, Name, Description, CriminalHistory)
VALUES
(4,4, 'Unknown','Investigation Ongoing',NuLL),
(5,5, 'Robber 2','Robbery','Robbery incidents recorded'),
(6,6, 'Suspect 2','Murderer','Serial killer'),
(7,7, 'Unknown','Investigation Ongoing','Serial killer'),
(8,8, 'Suspect 3','Theif','Theft incident histories recorded'),
(9,9, 'Suspect 5','Murderer','Serial killer'),
(10,10, 'Suspect 6','Drug dealer','Drug dealing crimes history recorded');
INSERT INTO Suspect (SuspectID, CrimeID, Name, Description, CriminalHistory)
VALUES
(11,11, 'Suspect 2','Theif','Theft incident histories recorded'),
(12,12 ,NULL,'Theif','Theft incident histories recorded');



select * from Crime
select * from Victim
select * from Suspect


--Select all open incidents.
select * from Crime where Status='Open';

--Find the total number of incidents.
select count(*) as total_incidents,IncidentType from Crime group by IncidentType

--List all unique incident types.
select distinct IncidentType from Crime

--Retrieve incidents that occurred between '2023-09-15' and '2023-09-25'.
select * from Crime where IncidentDate between '2023-09-15' and '2023-09-25'

--List persons involved in incidents in descending order of age.
alter table Victim add Victim_age int;
update Victim set Victim_age=30 where VictimID=1
update Victim set Victim_age=32 where VictimID=2
update Victim set Victim_age=55 where VictimID=3
update Victim set Victim_age=25 where VictimID=4
update Victim set Victim_age=50 where VictimID=5
update Victim set Victim_age=40 where VictimID=6
update Victim set Victim_age=34 where VictimID=7
update Victim set Victim_age=54 where VictimID=8
update Victim set Victim_age=32 where VictimID=9
update Victim set Victim_age=65 where VictimID=10
update Victim set Victim_age=33 where VictimID=11

alter table Suspect add Suspect_age int;
update Suspect set Suspect_age=37 where SuspectID=1
update Suspect set Suspect_age=40 where SuspectID=2
update Suspect set Suspect_age=43 where SuspectID=3
update Suspect set Suspect_age=28 where SuspectID=4
update Suspect set Suspect_age=39 where SuspectID=6
update Suspect set Suspect_age=43 where SuspectID=7
update Suspect set Suspect_age=24 where SuspectID=8
update Suspect set Suspect_age=48 where SuspectID=9
update Suspect set Suspect_age=35 where SuspectID=10

select s.Suspect_age, Incidenttype from Crime c join Suspect s on c.CrimeID=s.CrimeID order by s.Suspect_age desc;
select v.Victim_age, Incidenttype from Crime c join Victim v on c.CrimeID=v.CrimeID order by v.Victim_age desc;

--Find the average age of persons involved in incidents.
select avg(s.suspect_age)as avg_suspect_age,avg(v.victim_age) as avg_victim_age, IncidentType from Crime c join Victim v on c.CrimeID=v.CrimeID join Suspect s on v.CrimeID=s.CrimeID group by IncidentType

--List incident types and their counts, only for open cases.
select IncidentType,Status ,Count(*) as Incident_count from Crime where Status='Open' group by IncidentType,Status

--Find persons with names containing 'Doe'.
select * from Victim where Name like '%Doe'

--Retrieve the names of persons involved in open cases and closed cases.
select v.Name,c.Status from Crime c join Victim v on c.CrimeID=v.CrimeID where  Status= 'Closed'
UNION
select v.Name,c.Status from Crime c join Victim v on c.CrimeID=v.CrimeID where  Status= 'Open'

--List incident types where there are persons aged 30 or 35 involved.
select s.Suspect_age, Incidenttype from Crime c join Suspect s on c.CrimeID=s.CrimeID where s.Suspect_age in(30,35) 
select v.Victim_age, Incidenttype from Crime c join Victim v on c.CrimeID=v.CrimeID where v.Victim_age in(30,35)

--Find persons involved in incidents of the same type as 'Robbery'.
select  s.Name as Person_involved,IncidentType from Crime c join Suspect s on c.CrimeID=s.CrimeID where IncidentType='Robbery'

--List incident types with more than one open case.
select IncidentType  from Crime where IncidentType in (select IncidentType from Crime where Status='Open' group by IncidentType having count(CrimeID)>1)

--List all incidents with suspects whose names also appear as victims in other incidents.
select c.*,s.*,v.* from Crime c join Victim v on c.CrimeID=v.CrimeID join Suspect s on v.CrimeID=s.CrimeID where s.Name=v.Name

--Retrieve all incidents along with victim and suspect details.
select c.*,s.*,v.* from Crime c join Victim v on c.CrimeID=v.CrimeID join Suspect s on v.CrimeID=s.CrimeID

--Find incidents where the suspect is older than any victim.
select c.*,s.Suspect_age,v.Victim_age from Crime c join Victim v on c.CrimeID=v.CrimeID join Suspect s on v.CrimeID=s.CrimeID where s.Suspect_age>v.Victim_age

--Find suspects involved in multiple incidents:
select s.Name, c.IncidentType from Crime c join Suspect s on c.CrimeID=s.CrimeID where s.Name in (select Name from Suspect group by Name having count(CrimeID)>1)

--List incidents with no suspects involved.
select c.* from Crime c join Suspect s on c.CrimeID=s.CrimeID where s.Name is NULL

--List all cases where at least one incident is of type 'Homicide' and all other incidents are of type 'Robbery'.
select top 1* from Crime where IncidentType ='Homicide' 
select * from Crime where IncidentType='Robbery'

--Retrieve a list of all incidents and the associated suspects, showing suspects for each incident, or 'No Suspect' if there are none.
select c.*,COALESCE(s.Name, 'No Suspect') as suspect_name from Crime c join Suspect s on c.CrimeID=s.CrimeID 

--List all suspects who have been involved in incidents with incident types 'Robbery' or 'Assault'
select s.Name,c.IncidentType from Crime c join Suspect s on c.CrimeID=s.CrimeID  where IncidentType in ('Robbery', 'Assault')



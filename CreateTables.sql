--CREATE TABLES FOR CASE STUDY----------------------------------------
Create Table CasualStaff (
	cStaffId int Primary Key,
	homeAddress nvarchar(50),
	emailAddress nvarchar(50),
	mobile nvarchar(50),
	fName nvarchar(50),
	lName nvarchar(50),
);

Create Table Supervisor (
	supervisorId int Primary Key,
	fName nvarchar(50),
	lName nvarchar(50)
);

Create Table Venue (
	venueId int Primary Key,
	venueName nvarchar(50)
);


Create Table Subject (
	subjectId int Primary Key,
	sName nvarchar(50)
);

Create Table PositionType (
	positionTypeId int Primary Key,
	hourlyRate int,
	role nvarchar(50)
);

Create Table Position (
	positionId int Primary Key,
	positionTypeId int References PositionType(positionTypeId),
	subjectId int References Subject(subjectId),
	venueId int References Venue(venueId),
	experience int,
	dateStart date,
	dateEnd date,
	releaseDate date,
	status nvarchar(50)
);



Create Table Schedule (
	positionId int Primary Key References Position(positionId),
	startTime time,
	finishTime time
);


Create Table Date (
	positionId int References Schedule(PositionId),
	date date
);

Create Table Recruitment (
	recruitmentId int Primary Key,
	positionId int References Position(positionId),
	cStaffId int References CasualStaff(cStaffId),
	supervisorId int References Supervisor(supervisorId),
);

Create Table Application (
	cStaffId int References CasualStaff(cStaffId),
	positionId int References Position(positionId),
	estTravelTime int,
	Primary Key (cStaffId, positionId)
);

Create Table StaffRequest (
	requestId int Primary Key,
	positionId int References Position(positionId),
	cStaffId int References CasualStaff(cStaffId)
);

Create Table TeachableSubject (
	cStaffId int References CasualStaff(cStaffId),
	subjectId int References Subject(subjectId),
	Primary Key(cStaffId, subjectId)
);

Create Table Interest (
	cStaffId int References CasualStaff(cStaffId),
	subjectId int References Subject(subjectId),
	positionTypeId int References PositionType(positionTypeId),
	Primary Key(cStaffId, subjectId)
);

Create Table Qualification (
	cStaffId int References CasualStaff(cStaffId),
	qualification nvarchar(50)
);

Create Table Expertise (
	cStaffId int References CasualStaff(cStaffId),
	subjectId int References Subject(subjectId),
	yearExperience int,
	competitivness int CHECK(competitivness > 0 and competitivness < 11),
);

/*
Drop Table Expertise, Qualification, Interest, TeachableSubject, StaffRequest, Application,
Recruitment, Date, Schedule, Position, PositionType, Subject, Venue, Supervisor, 
CasualStaff;
*/



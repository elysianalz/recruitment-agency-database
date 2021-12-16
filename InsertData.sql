-------------------INSERT DATA FOR CASE STUDY-------------------------

--casual staff
INSERT INTO CasualStaff
VALUES (1, '13 morris street', 'matthew@gmail.com', '0478645878', 
'matthew', 'beerens');

INSERT INTO CasualStaff
VALUES (2, '11 george street', 'teacher2@gmail.com', '0497357546', 
'james', 'bond');

INSERT INTO CasualStaff
VALUES (3, '19 mable street', 'teacher3@gmail.com', '0478765899', 
'billy', 'bob');

INSERT INTO CasualStaff
VALUES (4, '20 woody lane', 'teacher4@gmail.com', '0474763899', 
'bree', 'siddons');

--supervisor
Insert Into Supervisor
Values (1, 'henry', 'walker');

Insert Into Supervisor
Values (2, 'mike', 'key');

Insert Into Supervisor
Values (3, 'lola', 'higs');

--venue
Insert Into Venue
Values (1, 'awesome university');

Insert Into Venue
Values (2, 'okay university');

Insert Into Venue
Values (3, 'bad university');

--subject
Insert Into Subject
values (1, 'Computer Science');

Insert Into Subject
values (2, 'Mathematics');

Insert Into Subject
values (3, 'English');

--Position type
Insert Into PositionType
Values (1, 20, 'Marking');

Insert Into PositionType
Values (2, 30, 'lecturing');

Insert Into PositionType
Values (3, 25, 'tutoring');

--Position
Insert Into Position
Values (1, 1, 1, 1, 2, '2020-09-21', '2020-10-21', '2020-08-21', 'Filled');

Insert Into Position
Values (2, 2, 2, 2, 3, '2020-11-22', '2020-12-22', '2020-08-21', 'Filled');

Insert Into Position
Values (3, 3, 3, 3, 4, '2020-01-23', '2020-02-23', '2020-07-22', 'Filled');

Insert Into Position
Values (4, 3, 2, 1, 2, '2020-01-23', '2020-02-23', '2020-08-21', 'Vacant');

--Schedule
Insert Into Schedule
Values (1, '09:00', '11:00');

Insert Into Schedule
Values (2, '11:00', '13:00');

Insert Into Schedule
Values (3, '14:00', '16:00');

Insert Into Schedule
Values (4, '16:00', '18:00');

--Date
Insert Into Date
Values (1, '2020-10-22');

Insert Into Date
Values (2, '2020-10-22');

Insert Into Date
Values (3, '2020-10-22');

Insert Into Date
Values (1, '2020-10-24');

Insert Into Date
Values (2, '2020-10-24');

--Recruitment
Insert Into Recruitment
Values (1, 1, 1, 1);

Insert Into Recruitment
Values (2, 2, 2, 2);

Insert Into Recruitment
Values (3, 3, 3, 3);

--Application
Insert Into Application
Values (1, 1, 20);

Insert Into Application
Values (2, 2, 25);

Insert Into Application
Values (3, 3, 30);

--StaffRequest
Insert Into StaffRequest
Values (1, 1, 1);

Insert Into StaffRequest
Values (2, 2, 2);

Insert Into StaffRequest
Values (3, 3, 3);

--teachableSubject
Insert Into TeachableSubject
Values (1, 1)

Insert Into TeachableSubject
Values (2, 2)

Insert Into TeachableSubject
Values (3, 3)

--Interest
Insert Into Interest
Values (1, 1, 1);

Insert Into Interest
Values (2, 2, 2);

Insert Into Interest
Values (3, 3, 3);

--Qualification
Insert Into Qualification
Values (1, 'bachlor teaching');

Insert Into Qualification
Values (2, 'bachlor Computer Science');

Insert Into Qualification
Values (3, 'bachlor Mathematics');

--Expertise
Insert Into Expertise
Values (1, 1, 2, 7);

Insert Into Expertise
Values (2, 2, 3, 8);

Insert Into Expertise
Values (3, 3, 4, 9);
----------------QUERIES FOR CASE STUDY-------------------------

/*
List who supervises which casual staff on what jobs.
*/
Select s.fName as supervisorfName, 
s.lName as supervisorlastname,
c.fName, c.lName,
pt.role, su.sName as Subject,
v.venueName
From Recruitment r, Supervisor s,
CasualStaff c, Position p, PositionType pt,
Subject su, Venue v
Where r.supervisorId = s.supervisorId
	and r.cStaffId = c.cStaffId
	and r.positionId = p.positionId
	and pt.positionTypeId = p.positionTypeId
	and p.subjectId = su.subjectId
	and p.venueId = v.venueId;

/*
  For all casual staff, list their expertise 
  (i.e. the subjects each staff is familiar with), 
  the corresponding years of experience on 
  the respective expertise, and the self-rating on 
  their competitiveness. Order the output in 
  terms of the staff name, self rating and experience.
*/
Select c.fName, c.lName, 
e.competitivness, e.yearExperience, 
s.sName as Subject
from CasualStaff c, Expertise e, Subject s
where c.cStaffId = e.cStaffId
	and e.subjectId = s.subjectId;

/*
For a given date, say 22 Oct 2020, 
list the job details for all jobs 
that have (face to face teaching) 
activities on that day.
*/
Select v.venueName, s.sName, pt.hourlyRate, pt.role,
sc.startTime, sc.finishTime
From Venue v, Subject s, PositionType pt, Position p,
Schedule sc, Date d
Where p.positionTypeId = pt.positionTypeId
	and p.positionId = sc.positionId
	and s.subjectId = p.subjectId
	and p.venueId = v.venueId
	and d.positionId = sc.positionId
	and d.date = '2020-10-22'
	and pt.role != 'Marking';

/*
For all the casual staff members who 
got one or more contracts within this 
recruitment system, list respectively 
their name, and the total amount of dollars 
added up from all the contracts for 
the same individual member.
*/
Select c.fName, c.lName,
DATEDIFF(hour, sc.startTime, sc.finishTime) * COUNT(d.positionId) * pt.hourlyRate
as totalEarnings
from CasualStaff c, Schedule sc, Date d, PositionType pt,
Recruitment r, Position p
Where r.cStaffId = c.cStaffId
	and r.positionId = p.positionId
	and p.positionTypeId = pt.positionTypeId
	and p.positionId = sc.positionId
	and sc.positionId = d.positionId
Group By sc.startTime, sc.finishTime, d.positionId, pt.hourlyRate, c.fName, c.lName;

/*
List all recuitments that are enlisted (released)
on a given date and their current employment 
status/details such as who filled which job,
the (job) position type, the timeslot, 
and the venue. Sort the output in the 
order of the job type, status on filling
the job, and the job's start time
*/
Select s.sName as subject, pt.role,
v.venueName, sc.startTime, sc.finishTime,
c.fName, c.lName, p.status
From Recruitment r
Right Outer Join Position p on p.positionId = r.positionId
Left Outer Join CasualStaff c on c.cStaffId = r.cStaffId
Join Subject s on s.subjectId = p.subjectId
Join PositionType pt on pt.positionTypeId = p.positionTypeId
join Venue v on v.venueId = p.venueId
join Schedule sc on sc.positionId = p.positionId
where p.releaseDate = '2020-08-21'
Order By pt.role, c.fName, c.lName, sc.startTime;






-----------------------------------------------
-- DATA EXPLORATION PHASE USING SQL------------
-----------------------------------------------

-- zone where the instution can be found
select zone from Zones$


-- number of study centers in the institution
select count(distinct [study center]) as no_of_studycenter
from StudyCenters$;


-- states where the study centers are found
select distinct st.state
from StudyCenters$ s
inner join States$ st
on s.ID = st.ID
order by state;


-- the name of the programe that is being run in the campus
select ID, [programme Name]
from Programmes$
group by  ID, [programme Name]


-- the academic session in the institution
select session as session
from AcademicSessions$


-- the total number of specialization in the institution
select count(distinct Specialization) as number_of_specialization
from Specializations$


-- the specialization in the institution
select distinct Specialization
from Specializations$


-- the number of specialization in the institution by status
select status, count([status]) as number_of_specialization
from Specializations$
group by [status]


--number of specialization that have practical in the institution
select Practical, count(distinct specialization) as number_of_specialization 
from Specializations$
group by Practical


-- programmes offered in the institution
select distinct [Programme Name] 
from Programmes$


 -- total number of applicant 
 select count(ap.ID) as total_applicant
 from Admissions$ ad
 inner join Applicants$ ap
 on ad.id = ap.ID
 

--the entry type used by the institution
  select distinct entry_type as entry_type
 from Admissions$ ad
 inner join Applicants$ ap
 on ad.id = ap.ID



 -- the programme durations offered by the institution
  select [Program Duration]
 from Admissions$ ad
 inner join Applicants$ ap
 on ad.id = ap.ID
 group by [Program Duration]
 order by [Program Duration] desc


 -- the kind of fee that is charged in the institution
 select FeeType from 
 FeesTypes$


 -- total number of students from all specializations
select sum(number_of_students) as number_of_students 
from (select Specialization, count(s.ID) as number_of_students 
	from Students$ s
	inner join Specializations$ sp 
	on s.SpecalizationID = sp.id
	group by Specialization
	) t


-- total number of students in the institution
select count(*) as number_of_students from Students$


-- total number of applicants admitted in the institution
select count(*) as number_of_applicant_admitted from Admissions$


-- total number of applicants that applied to the institution
select count(*) as number_of_applicant_applied from Applicants$


-- applicants admission percent in the institution
select round(cast(count(ad.id) as float) / cast(count(ap.id) as float), 3) * 100
as intake_percent
from Admissions$ ad
full outer join Applicants$ ap on ad.applicant_id = ap.id


-- total number of study centers
select count(distinct [study center]) as study_centers 
from StudyCenters$


--------------------------------------------
-- DATA ANALYSIS PHASE USING SQL------------
--------------------------------------------

 --number of applicants by entry type ==============
select EntryLevelType, count(EntryLevelType) as total_no_of_applicant
from Applicants$
group by EntryLevelType



-- total  tution fees per year from all spec =============
select 
	EntryYear,
	sum(st.amount)  as total_tution_fee
	from FeesTypes$ ft 
 inner join StudentsTransactions$ st  
on ft.ID = st.FeeID
inner join Students$ s 
on st.StudentID = s.ID
group by  EntryYear
order by EntryYear desc



-- number of programme per specialization ==========
select 
	[Programme Name], 
	count(sp.id) as number_of_specialization
from Programmes$ pr
inner join Specializations$ sp
on pr.ID = sp.ProgrammeID
group by  [Programme Name]
order by number_of_specialization desc


-- number of applicants per programme ==========
select 
	[programme Name], 
	count(ad.id) as number_of_applicant
from Admissions$ ad
inner join Programmes$ pr
on ad.programme_id = pr.ID
group by  [programme Name]
order by number_of_applicant desc


-- number of applicants per study center =============
select top 20
		[Study Center],
		count(ap.ID) as number_of_applicants
from Applicants$ ap
inner join StudyCenters$ sc 
on ap.StudyCenterID = sc.ID
group by [Study Center]
order by number_of_applicants desc


-- number of students per study center ==============
select top 20
		[Study Center],
		count(s.ID) as number_of_students
from Students$ s
inner join StudyCenters$ sc 
on s.StudyCenterID= sc.ID
group by [Study Center]
order by number_of_students desc



-- number of students per programme ================
select 
	[PROGRAMME NAME],
	count(s.ID) as number_of_students 
from Students$ s 
inner join Programmes$ pr 
on s.ProgrammeID = pr.ID
group by [PROGRAMME NAME]
order by number_of_students  desc


--number of students per specialization (top 20) ===============
select top 20 Specialization, count(s.ID) as number_of_students 
from Students$ s
inner join Specializations$ sp 
on s.SpecalizationID = sp.id
group by Specialization
order by number_of_students desc


-- number of applicants per specialization top 20 ==============
select top 20
		Specialization,
		count(ap.ID) as number_of_applicants
from Applicants$ ap 
inner join Admissions$ ad
on ap.id = ad.applicant_id
inner join Specializations$ sp 
on ad.specialization_id = sp.id
group by specialization 
order by  number_of_applicants desc



 -- the total number of applicant per admission status =========
  select [Admission Status], count(distinct applicant_id) as total_applicants
 from Admissions$ ad
 inner join Applicants$ ap
 on ad.id = ap.ID
 group by [Admission Status]
 order by  total_applicants desc



 -- semester with the highest course registration ==================
select 
	Semester, 
	count(se.ID) as totaL_registerd_course
from Semesters$ se
inner join CourseRegistration$ cr 
on se.ID = cr.SemesterID
group by Semester


-- total Amount paid by applicants per specialization ================
select top 20
	Specialization,
	sum(amount) as total_amount
from ApplicantionFinancials$ af
inner join Applicants$ ap
on af.ApplicantID =ap .ID
inner join Admissions$ ad
on   ap.ID= ad.applicant_id
inner join Specializations$ sp
on ad.specialization_id = sp.id
group by  Specialization
order by total_amount desc


-- total application fees paid by applicants per fee type ===============
select 
	FeeType, 
	total_amount 
from (select distinct FeesTypeID, sum(Amount) as total_amount
		from ApplicantionFinancials$
		group by FeesTypeID) sub
inner join FeesTypes$ f
on sub.FeesTypeID = f.ID


-- total application fees paid by applicants per payment status ============
select		
	Status,
	sum(Amount) as total_amount
from ApplicantionFinancials$ 
group by Status
order by total_amount desc


-- total application fees paid by applicants per transaction status =============
select		
	TransactionStatus,
	sum(Amount) as total_amount
from ApplicantionFinancials$ 
where TransactionStatus is not null
group by TransactionStatus
order by total_amount desc


-- total application fees paid by applicants per program ==============
select		
	(pr.[PROGRAMME NAME]),
	sum(amount) as total_amount
from Programmes$ pr 
inner join ApplicantionFinancials$ ap 
on pr.ID = ap.ApplicantProgramID
group by pr.[PROGRAMME NAME]
order by total_Amount desc


-- total application fees paid by applicants per top 20 study centers =============
select top 20
	[study center],
	sum(amount) as total_amount
from StudyCenters$ st
inner join ApplicantionFinancials$ ap 
on st.ID = ap.ApplicantStudyCenterID
group by [study center]
order by total_amount desc


-- total fees paid per students per fee type ============
select  
	feetype,
	sum(amount) as total_amount
		 from FeesTypes$ ft
inner join StudentsTransactions$ st 
on ft.ID = st.FeeID
group by feetype
order by total_amount desc


--  total Amount paid by students per semester =============
select 
	semester,
	sum(amount) as total_amount
from Semesters$ se
inner join StudentsTransactions$ st 
on se.ID = st.SemesterID
group by semester


--total Amount paid by students per transaction status ==========
select 
	[status],
	sum(amount) as total_amount
from  StudentsTransactions$ st 
group by [status]
order by total_amount desc


-- total Amount paid by student per programme 
select 
	[PROGRAMME NAME],
	sum(amount) as total_amount
from Programmes$ pr 
inner join StudentsTransactions$ st 
on pr.ID = st.StudentProgramID
group by [PROGRAMME NAME]
order by total_amount desc


-- total Amount paid by students  per specialization 
select top 20
	Specialization,
	sum(amount) as total_amount
from StudentsTransactions$ st
inner join Students$  s
on st.StudentID = s.ID
inner join Specializations$ sp 
on s.SpecalizationID = sp.id
group by  Specialization
order by total_amount desc


--total Amount paid by students per study center 
select top 20
	[study center],
	sum(amount) as total_amount
from StudyCenters$ sc
inner join StudentsTransactions$ st
on sc.ID = st.StudentStudyCenterID
group by [study center]
order by total_amount desc


-- total Amount paid per student payment status 
select
	status,
	sum(amount) as total_amount
from StudentsTransactions$
where [Transaction Status] is not null
group by status
order by total_amount desc


-- total Amount paid per student transaction status
select
	[transaction status],
	sum(amount) as total_amount
from StudentsTransactions$
where [Transaction Status] is not null
group by [transaction status]
order by total_amount desc


-- total number of applicants per payment status 
select status, count(distinct ApplicantID) as [no. of applicants]
from ApplicantionFinancials$
group by status 


-- total number of applicants per transaction status
select 
		transactionStatus,
		count(ap.ID) as number_of_applicants
from ApplicantionFinancials$ af 
inner join Applicants$ ap 
on af.ApplicantID = ap.ID
group by transactionStatus
order by number_of_applicants desc


--total number of students per payment status 
select 
		[status],
		count(s.ID) as number_of_students
from StudentsTransactions$ st
inner join Students$ s
on st.StudentID = s.ID
group by [status]
order by number_of_students desc


-- total number of students per transaction status
select 
		[transaction status],
		count(s.ID) as number_of_students
from StudentsTransactions$ st
inner join Students$ s
on st.StudentID = s.ID
where [transaction status] is not null
group by [transaction status]
order by number_of_students desc


--total number of students per application status 
select  ApplicationStatus, count(distinct studentID) as total_registerd_students
from CourseRegistration$ cr 
inner join Applicants$ ap 
on cr.id = ap.id 
group by ApplicationStatus


-- student registrations by registration type 
select RegistrationType, count(RegistrationType) as total_registration
from CourseRegistration$
group by RegistrationType


-- number of applicants admitted per specialization (top 10) 
select Specialization, count(ap.ID) as number_of_applicant 
from Applicants$ ap
inner join Admissions$ ad
on ad.applicant_id = ap.ID
inner join Specializations$ sp 
on ad.specialization_id = sp.id
group by Specialization
order by number_of_applicant desc



-- number of applicants per year per admission type 
select 
	entry_type, 
	count(ad.ID) as number_of_applicant
from Admissions$ ad
inner join Applicants$ ap
on ad.applicant_id = ap.ID 
group by entry_type


-- number of study center per state 
select  
	st.State, 
	count(sc.ID) as number_of_studycenter
from StudyCenters$ sc
inner join States$ st
on sc.StateID = st.ID
group by st.State
order by number_of_studycenter desc


-- number of study centers in the institution (top 20) 
select top 20
	[Study Center], 
	count(ID) as number_of_study_centers
from StudyCenters$
group by [Study Center]
order by number_of_study_centers desc

-------------------------------------------------
-----------------END-----------------------------
-------------------------------------------------

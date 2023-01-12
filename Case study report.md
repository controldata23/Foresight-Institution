
# FORESIGHT TERTIARY INSTITUTION CASE STUDY

Foresight Institute is a Nigerian Tertiary Institution. They run Distance Learning Programs with Campuses across the Nigerian States. Foresight Tertiary Institute has Data at 4 levels:

* Student Applications for intending students

* Admission of New Students into different programs

* Existing Student’s Course Registrations

* Financial Data of fees paid by Applicants and School fees paid by Returning Students.

* The Institution wants to be on top of its numbers, lead and make decisions based on its Data.

## BUSINESS QUESTION FOR THIS CASE STUDY

 As a Data Analyst working on this case study, I have decided to put forward a business question and provide my answer to it using my data analytics skills, as well as provide a reasonable and actionable business recommendation to Foresight Tertiary Institution. 
 
**How can Foresight Tertiary Institution be the best and how can they improve to maintain being at the top?**

## DATA PREPARATION (DESCRIPTION OF THE DATA SET)

The dataset for the Foresight Tertiary institution was obtained from the following link:
[here.](https://foresightbi.com.ng/practice-data/3-datasets-for-your-portfolio/)

The dataset was provided as an Excel workbook (XLSX) containing 14 tables.

The table below summarizes the description of the dataset in the 14 tables (color-coded):


|Table|Field|Description|
|:----|:----|:----|
|Zones|ID|Unique Identifier for Each Geographical Zone|
|Zones|Code|Short Name for Zone|
|Zones|Zone|Name of Zone|
|States|ID|Unique Identifier for each state|
|States|StateShort|Short Name for State|
|States|State|Name of State|
|States|ZoneID|ID of zone the state belongs to|
|Study Centers|ID|Unique Identifier for each Campus/Study Center Location & Program|
|Study Centers|StateID|ID of State where Study Center is located|
|Study Centers|Study Center|Name of Study Center|
|Study Centers|ProgramID|ID of Program type being run in the campus|
|Study Centers|Status|Indicates if the campus is active or not|
|Study Centers|State|The state where the study center is located|
|Academic Sessions|ID|Unique Identifier for each session|
|Academic Sessions|Session|Name of Session|
|Academic Sessions|Year|Year of Session|
|Academic Sessions|Status|Identifies if Session is in progress or completed|
|Semesters|ID|Unique Identifier for each Semester Session|
|Semesters|AcademicSessionID|ID of Academic Session the semester belongs to|
|Semesters|Semester|ID of Semester Name|
|Semesters|Status|Indicates if Semester is currently running or completed|
|Specializations|id|Unique Identifier for Course Discipline/Specialization|
|Specializations|Specialization|Name of Specialization|
|Specializations|Practical|Indicates if the specialization involves practicals or not|
|Specializations|ProgrammeID|Identifies type of degree or program|
|Specializations|status|Indicates if the specialization is active or not|
|Programmes|ID|Unique Identifier for each Programme|
|Programmes|Programme Name|Name of Programme|
|FeeTypes|ID|Unique Identifier for type of fees charged|
|FeeTypes|FeeType|Name of fee|
|Admissions|id|Unique Identifier for each Admission record|
|Admissions|applicant_id|ID of the applicant|
|Admissions|programme_id|ID of the programme the applicant is putting in for|
|Admissions|specialization_id|ID of the specialization the applicant is putting in for|
|Admissions|entry_year|Admission Year|
|Admissions|entry_type|Indicates if applicant is coming in as a Fresher or Direct Entry to an advanced level|
|Admissions|Program Duration|Length of the programme|
|Admissions|Admission Status|Indicates the virdict of the admission|
|Admissions|Remarks|Comments especially when admission is not granted|
|Admissions|ApplicationState|State of the applicant|
|ApplicationFinancials|ID|Unique ID for each aplication payment record|
|ApplicationFinancials|FeesTypeID|ID for the type of payment|
|ApplicationFinancials|SemesterID|ID for the semester the payment is meant for|
|ApplicationFinancials|Amount|Amount Paid|
|ApplicationFinancials|Status|Status of the payment|
|ApplicationFinancials|Payment Advice Date|When Payment Advice was generated|
|ApplicationFinancials|ApplicantID|ID of applicant making the payment|
|ApplicationFinancials|ApplicantProgramID|ID of the program applicant is paying for|
|ApplicationFinancials|ApplicantStudyCenterID|ID of the Study center the applicant applied to|
|ApplicationFinancials|ApplicantApplicationStateID|StateID of the Applicant|
|ApplicationFinancials|TransactionStatus|System captured status of payment|
|Applicants|ID|Unique ID for each Applicant Record|
|Applicants|UserID|System User ID for applicant|
|Applicants|SemesterID|ID of semester applicant is putting in for|
|Applicants|ProgramID|ID of the program the applicant is putting in for|
|Applicants|FirstChoice|1st choice of Specialization applicant is putting in for|
|Applicants|SecondChoice|2nd choice of specialization applicant is putting in for|
|Applicants|EntryLevelType|Indicates if applicant is entering as a Fresher or Direct Entry|
|Applicants|StudyCenterID|ID of syudy center applicant is putting in for|
|Applicants|ApplicationStateID|ID of applicant's state|
|Applicants|ApplicationStatus|Status of application|
|CourseRegistration|ID|Unique Identifier for each course registration record|
|CourseRegistration|StudentID|ID of Student registering for course|
|CourseRegistration|SemesterID|ID of the semester the registration is meant for|
|CourseRegistration|RegistrationType|Indicates if theregistration is regular or a retake/carried over course|
|CourseRegistration|Day|Day of Registration|
|CourseRegistration|Month|Month of Registration|
|CourseRegistration|Year|Year of Registration|
|Students|ID|Unique ID for each student record|
|Students|ProgrammeID|ID of programme the student is running|
|Students|SpecalizationID|ID of specialization is running|
|Students|StudyCenterID|ID of Study center the student is entered for|
|Students|EntryYear|Year the student started programme|
|Students|EntryType|Indicates if student as a fresher or Direct Entry|
|Students|UserID|System User ID for student|
|Students|ApplicantID|ID of student during application|
|StudentsTransactions|ID|Unique ID for each student payment record|
|StudentsTransactions|FeeID|ID for the type of payment|
|StudentsTransactions|SemesterID|ID for the semester the payment is meant for|
|StudentsTransactions|amount|Amount Paid|
|StudentsTransactions|status|Status of the payment|
|StudentsTransactions|PaymentAdviceDate|When Payment Advice was generated|
|StudentsTransactions|StudentID|ID of student making the payment|
|StudentsTransactions|StudentProgramID|ID of the program student is paying for|
|StudentsTransactions|StudentSpecializationID|ID of the Study center the student applied to|
|StudentsTransactions|StudentStudyCenterID|StudyCenterID of the Student|
|StudentsTransactions|Transaction Status|System captured status of payment|


## DATA PROCESSING (CLEANING OF THE DATASET)

Data exploration and cleaning was done using Google Sheets. The following information was discovered during the data processing:

1)	They are 234, 864 students in the Foresight institution 

2)	Foresight institutions can be found in six zones

3)	The zones of the institution are:

     a)	North Central

     b)	North East

     c)	North West

     d)	South East

     e)	South South

     f)	South West

4)	It was also observed that Foresight Institution is present in 37 states.
Foresight Institution has 488 study centers.
And Lagos state with the highest number of study centers has 62 study centers. And Edo state has 13 study centers making it the state with the lowest study center 


5)	In Foresight Institution, only five programs are being offered, they are:

     a)	NCE 

     b)	PTTB

     c)	PGDE

     d)	ADE

     e)	BSC
 	   
 6)	Foresight Institution has 12 Academic Sessions and two semesters. And they are:

     a)	2006/2007

     b)	2007/2008

     c)	2008/2009

     d)	2009/2010

     e)	2010/2011

     f)	2011/2012

     g)	2012/2013

     h)	2013/2014

     i)	2014/2015

     j)	2015/2016

     k)	2016/2017

     l)	2017/2018

7)	There are 56 specializations or departments in foresight Institution.

8)	The program with the highest specialization is NCE, which has a total of 45 specializations and PGDE & PTTP have just 1 specialization respectively.

9)	PGDE is the specialization with the highest number of applicants totaling 2604

10)	 The specializations that pay the highest fees are Primary Education/Christianity studies with a total fee amount of N62,720.

11)	 It was observed that only 26,914 students paid their fees and 30,175 students did not pay. While 488 students’ fees were waived.

12)	 In the Institution only 41 specializations are active. And the remaining 15 specializations are inactive.


13)	 Among the 56 specializations, only 8 specializations offer practicals and 48 specializations do not offer practicals.

14)	 It was recorded that during course registration a total of 4144 regular students registered for courses and 83 carry-over students also registered for courses.

15)	 During course registration a total of 611 students registered for the first semester while 3616 students registered for the second semester.

16)	 The program duration  in the institution are:

     a)	4 years

     b)	3 years

     c)	15 months (1 year 3 months)

     d)	1 year

17)	 In 2018, a total of 6187 were admitted, 554 were placed under probation and 75 were denied admission by the institution.

18)	  A total of 2762 applicants applied for the NCE while just 1 applicant applied for ADE programs making it the program that has the highest and lowest number of applicants respectively.

19)	 There are two different entry types used by the school when offering admission they are:

     a)	Direct Entry 

     b)	Fresher

20)	 In 2018, a total of 675 and 6156 applicants were offered admission through direct entry and Fresher respectively.

21)	 The intake percent of the institution is 37.9%.

## DATA ANALYSIS (INSIGHT FROM THE DATASET)

I ran some queries on the dataset using a Microsoft SQL server to carry out my analysis toward answering the business question. The results of these queries were then visualized graphically using Tableau software.
The following are important insights revealed by my analysis of the dataset:

1)	From the visualization of applicant amount per specialization it was observed that, PGDE is the specialization having the highest amount N95,538,240.  See also the visualization of applicant per specialization where PGDE has the highest number of applicants. It was also observed that primary education/social studies and social studies are having almost the same amount despite the fact that primary education/social studies have higher number of applicants than social studies.


![aplicant amount per specialization](https://github.com/controldata23/Foresight-Institution/blob/main/aplicant%20amount%20per%20specialization.png)

![aplicant per specialization](https://github.com/controldata23/Foresight-Institution/blob/main/aplicant%20per%20specialization.png)



2)	From the visualization of the total amount per student transaction, the approved student transactions totaled N762, 683,040, and only a total amount of N917, 280 was rejected. The pending transactions was also on the high side, totaling a sum of N28,658,560.  See also the visualization of amount per student payment status. It is observed that the number of students that made payments was very high, thereby creating room for a lot of transactions to be approved. So it will be proper if we classify those students that have not paid to be among those whose amount per transaction is having a transaction that is pending.

![amount per student transaction](https://github.com/controldata23/Foresight-Institution/blob/main/amount%20per%20student%20transaction.png)


![amount per student payment ststus](https://github.com/controldata23/Foresight-Institution/blob/main/amount%20per%20student%20payment%20status.png)


3)	From the visualization of applicant fees per program, PGDE also generated the highest fees by the applicants. Also in the visualization of the number of applicants per program, NCE has the highest number of applicants but PGDE is generating more revenue than the NCE.  Again in the number of programs per specialization, it is observed that NCE has the highest number of specializations (45). Despite the fact that PGDE has only 1 specialization, it is still the specialization generating more revenue.


![aplicant fee per programme](https://github.com/controldata23/Foresight-Institution/blob/main/aplicant%20fee%20per%20programme.png)


![number of aplicant per programme](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20aplicant%20per%20programme.png)


4)	From the visualization of applicants per study admission type, it shows clearly that the institution favors freshers more than direct entry due to the increasing number of applicants as the number of applicants for fresher is 6156, while for direct entry it is 675. See also the number of applicants per entry type.


![aplicant per admission type](https://github.com/controldata23/Foresight-Institution/blob/main/aplicant%20per%20admission%20type.png)


![number of aplicant per entry type](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20aplicant%20per%20entry%20type.png)


5)	From the visualization of the applicant per study center, it is observed that the University of Go was generating more revenue than other study centers. In the visualization of the number of applicants per study center, it is observed that the Vocational Center, Go has the highest number of applicants per study center but the University of Go is the study center with the fourth highest number of applicants per study center.


![aplicant per study center](https://github.com/controldata23/Foresight-Institution/blob/main/aplicant%20per%20study%20center.png)


![number of aplicant per study center](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20aplicant%20per%20study%20center.png)


6)	From the visualization of the number of students per payment status, it is clearly observed that the number of students who did not pay is higher than those students who made payments. This might be something to look into as it is not proper to have a situation like this.


![number of students per payment status](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20students%20per%20payment%20status.png)


7)	From the visualization of the number of students per specialization, primary education/social studies have the highest number of students that applied to a particular specialization and then the second specialization with the highest number of students is PGDE. Note also that primary education/social studies also have the highest number of applicants.


![number of students per specialization](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20students%20per%20specialization.png)


8)	During the visualization of the number of students per program, it is clearly shown that NCE has the highest number of students per program as well as the highest number of applicants per program. PGDE is the program with the second-highest number of students. Although, our earlier visualization has shown that PGDE is the program generating the highest revenue.


![number of students per programme](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20students%20per%20programme.png)


9)	Observing the visualization of the number of students per study center, it is clearly seen that the University of Go has the highest number of students per study center. It has been shown from our earlier visualization that the University of Go is making more revenue than every other study center. Although they are not the study center with the highest number of applicants. 


![number of students per study center](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20students%20per%20study%20center.png)


10)	Examining the visualization of the number of students per transaction status, it is clearly seen that the number of approved student transaction status is higher. But it was also seen in our previous visualization of the number of students per payment status that those who didn’t pay their fees were very high as compared to those who paid.


![number of students per transaction status](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20students%20per%20transaction%20status.png)



11)	Looking at the visualization of the number of study centers, it was observed that the Vocational Center, Go has the highest number of study centers in the school, this information is valid because it agrees with our early visualization of the number of applicants per study center, where Vocational Center, Go has the highest number of applicants per study center.


![number of study center in the school](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20study%20center%20in%20the%20school.png)



From the visualization of the number of study centers per state, it is clearly seen that Lagos, Kaduna, and Oyo state has the highest number of study centers.


![number of study center per state](https://github.com/controldata23/Foresight-Institution/blob/main/no%20of%20study%20center%20per%20state.png)



13)	 From the visualization of course registration, it shows that the second semester has the highest number of course registration and the first-semester registration is low. Also in the visualization of the student amount per semester, the second semester is leading with a big margin in terms of revenue, and this could be a result of the high number of student registration during the second semester.


![semester course registration](https://github.com/controldata23/Foresight-Institution/blob/main/semester%20course%20registration.png)



![student amount per semester](https://github.com/controldata23/Foresight-Institution/blob/main/student%20amount%20per%20semester.png)



14)	 From the visualization of the students per program, it is observed that NCE is generating more revenue as compared to other programs. This visualization clearly agrees with our earlier visualization that shows that NCE has the highest number of applicants as well as the highest number of students.


![students per programme](https://github.com/controldata23/Foresight-Institution/blob/main/students%20per%20programme.png)


15)	From the visualization of students per specialization, PGDE leads in terms of revenue generation. This clearly agrees with our visualization of the applicant’s amount per specialization which shows that PGDE applicants generate more revenue. This could also be a result of them having the highest number of applicants.


![students per specialization](https://github.com/controldata23/Foresight-Institution/blob/main/students%20per%20specialization.png)



16)	From the visualization of students per study center, it is rightly observed that the University of Go, is generating more revenue than other study centers. This could be a result of the University of Go, having more students than other study centers. This clearly agrees with our earlier visualization of applicants per study center which also shows that the University of Go also makes more revenue than other study centers.


![student per study center](https://github.com/controldata23/Foresight-Institution/blob/main/students%20per%20%20study%20center.png)


17)	Observing the visualization of the total applicant per payment status, it was clearly observed that the unpaid amount by applicants were higher than the paid amount, and this clearly agrees with our earlier visualization of the number of students per payment status that a lot of students were not paying. It is also observed that both students and applicants were performing poorly in terms of payment.


![total aplicant per payment status](https://github.com/controldata23/Foresight-Institution/blob/main/total%20aplicant%20per%20payment%20status.png)


18)	From the visualization of registration type, it is observed that students with regular registration are higher than those with carry-over.

![total registration type](https://github.com/controldata23/Foresight-Institution/blob/main/total%20registration%20type.png)




For details of the SQL queries, [click here.]




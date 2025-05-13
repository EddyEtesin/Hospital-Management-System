select * from Treatments$
select * from patients$
select * from Billing$
select * from Appointments$
select * from Doctors$

----List all patients who haven't paid their bills.
select p.patientID, p.Name, p.Gender from patients$ p
join Billing$ b on p.patientID = b.patientID
where b.paymentdate is null or b.paymentmethod is null

---Count how many appointments each doctor has handled.
select d.Name, count(*)as Appointments from Doctors$ d
join Appointments$ a on d.doctorid = a.doctorid
where status = 'Completed'
group by d.Name 

---What is the total revenue generated from all treatments?
select sum(cost) as Total_Revenue from Treatments$ t
join Appointments$ a on t.AppointmentID = a.AppointmentID
join Billing$ b on a.PatientID = b.PatientID
where b.PaymentDate is not null or b.PaymentMethod is not null and a.status = 'Completed'

----Which doctor has the most completed appointments?
select top 1 d.Name, count(*) as No_of_completed_Appointments from Doctors$ d
join Appointments$ a on d.DoctorID = a.DoctorID 
where a.status = 'Completed'
group by d.Name
order by No_of_completed_Appointments desc


---List patients who have had more than 3 appointments.
select p.Name,count(*) as no_of_appointments from patients$ p
join Appointments$ a on p.PatientID = a.PatientID
group by p.Name
Having count(*) > 3 



-----What are the top 5 most common appointment reasons?
select Top 5 Reason , count(*) as No_of_reports from Appointments$
group by Reason 
order by No_of_reports desc

----Show the average treatment cost per doctor.
select d.Name,Avg(TotalAmount) as Average_Cost from Doctors$ d
join Appointments$ a on d.DoctorID = a.DoctorID
join Billing$ b on a.PatientID = b.PatientID
group by d.Name 
order by  Average_Cost


----Find all appointments scheduled in the current month.
select * from Appointments$
where Month(AppointmentDate) = Month(GETDATE()) 
and Year(AppointmentDate) =  Year(GETDATE())

-----Retrieve all treatments that cost more than the average treatment cost.
select  Description, cost from Treatments$
where cost > (select Avg(cost) from Treatments$)



-----List patients who have received more than one treatment in a single appointment.
select p.Name ,count(appointmentID) as No_of_Treatment from patients$ p 
join Appointments$ a on p.PatientID = a.PatientID
group by p.Name,a.appointmentID


-----Find the doctor with the longest tenure.
select top 1 Name,HireDate from Doctors$
order by HireDate asc

---Show the total number of patients treated per specialty.
select d.Specialty, count(a.PatientID) as No_of_Patients from Doctors$ d
join Appointments$ a on d.DoctorID = a.DoctorID
group by d.Specialty


---Get the distribution of payment methods used.
select PaymentMethod, Count(*) No_of_times_used from Billing$
where PaymentMethod is not null
group by PaymentMethod
 

----Which patients had appointments that were cancelled?
select distinct p.Name from patients$ p 
join appointments$ a on p.PatientID = a.PatientID
where a.Status = 'Cancelled'

----Calculate the total billing amount per patient.
select p.Name, sum(TotalAmount) as TotalBill from patients$ p 
join Billing$ b on p.PatientID = b.PatientID
group by p.Name
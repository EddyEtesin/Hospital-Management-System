# Hospital Management System - SQL Analysis

## Overview
This SQL script performs various analyses on a Hospital Management System database, including patient billing, appointment tracking, doctor performance, and financial reporting. The database consists of five main tables: `Treatments$`, `patients$`, `Billing$`, `Appointments$`, and `Doctors$`.

## Key Features

### 1. Financial Analysis
- Identifies patients with unpaid bills
- Calculates total revenue from completed treatments
- Shows average treatment cost per doctor
- Retrieves treatments costing more than average
- Displays payment method distribution
- Calculates total billing amounts per patient

### 2. Appointment Tracking
- Counts completed appointments per doctor
- Identifies the doctor with most completed appointments
- Lists patients with more than 3 appointments
- Shows top 5 most common appointment reasons
- Finds current month's appointments
- Identifies cancelled appointments

### 3. Patient Insights
- Lists patients receiving multiple treatments in single appointments
- Shows patients with cancelled appointments
- Calculates patients treated per specialty

### 4. Doctor Performance
- Identifies doctors by appointment volume
- Shows doctor with longest tenure
- Calculates average treatment cost per doctor

## SQL Queries Breakdown

1. **Unpaid Bills**  
   `Lists patients with missing payment information (null payment date or method)`

2. **Doctor Appointments**  
   `Counts completed appointments handled by each doctor`

3. **Revenue Analysis**  
   `Calculates total revenue from paid, completed treatments`

4. **Top Performing Doctor**  
   `Identifies the doctor with the most completed appointments`

5. **Frequent Patients**  
   `Lists patients with more than 3 appointments`

6. **Common Reasons**  
   `Shows top 5 most frequent appointment reasons`

7. **Cost Analysis**  
   `Calculates average treatment cost per doctor`

8. **Current Appointments**  
   `Finds all appointments scheduled in the current month`

9. **Above Average Costs**  
   `Retrieves treatments costing more than average`

10. **Multiple Treatments**  
    `Identifies patients receiving >1 treatment per appointment`

11. **Longest Tenure**  
    `Finds the doctor hired earliest (longest tenure)`

12. **Specialty Statistics**  
    `Counts patients treated per medical specialty`

13. **Payment Methods**  
    `Analyzes distribution of payment methods used`

14. **Cancelled Appointments**  
    `Lists patients with cancelled appointments`

15. **Patient Billing**  
    `Calculates total billing amount per patient`

## Usage

To use these queries:
1. Execute the initial SELECT statements to view all table data
2. Run individual analysis queries as needed
3. Modify date filters (like GETDATE()) for current reporting periods

## Database Schema
The system tracks:
- Patient demographics and appointments
- Doctor specialties and tenure
- Treatment costs and descriptions
- Billing and payment information
- Appointment statuses and reasons

This comprehensive analysis provides hospital administrators with insights into financial performance, doctor productivity, patient engagement, and operational efficiency.

-- Total number of patients waiting
SELECT SUM(Patients_Waiting) AS Total_Patients
FROM nhs_waiting_times;

-- Average waiting time by department
SELECT Department, AVG(Average_Wait_Time) AS Avg_Wait_Time
FROM nhs_waiting_times
GROUP BY Department;

-- Hospital with the highest waiting time
SELECT Hospital, MAX(Average_Wait_Time) AS Longest_Wait
FROM nhs_waiting_times
GROUP BY Hospital
ORDER BY Longest_Wait DESC;

-- Total patients waiting by hospital
SELECT Hospital, SUM(Patients_Waiting) AS Total_Patients
FROM nhs_waiting_times
GROUP BY Hospital
ORDER BY Total_Patients DESC;
